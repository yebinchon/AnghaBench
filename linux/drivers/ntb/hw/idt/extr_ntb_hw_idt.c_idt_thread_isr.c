
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {TYPE_2__* pdev; } ;
struct idt_ntb_dev {TYPE_1__ ntb; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev; } ;


 int IDT_NTINTSTS_DBELL ;
 int IDT_NTINTSTS_MSG ;
 int IDT_NTINTSTS_SEVENT ;
 int IDT_NT_NTINTSTS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (int *,char*,int) ;
 int idt_db_isr (struct idt_ntb_dev*,int) ;
 int idt_msg_isr (struct idt_ntb_dev*,int) ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 int idt_se_isr (struct idt_ntb_dev*,int) ;

__attribute__((used)) static irqreturn_t idt_thread_isr(int irq, void *devid)
{
 struct idt_ntb_dev *ndev = devid;
 bool handled = 0;
 u32 ntint_sts;


 ntint_sts = idt_nt_read(ndev, IDT_NT_NTINTSTS);


 if (ntint_sts & IDT_NTINTSTS_MSG) {
  idt_msg_isr(ndev, ntint_sts);
  handled = 1;
 }


 if (ntint_sts & IDT_NTINTSTS_DBELL) {
  idt_db_isr(ndev, ntint_sts);
  handled = 1;
 }


 if (ntint_sts & IDT_NTINTSTS_SEVENT) {
  idt_se_isr(ndev, ntint_sts);
  handled = 1;
 }

 dev_dbg(&ndev->ntb.pdev->dev, "IDT IRQs 0x%08x handled", ntint_sts);

 return handled ? IRQ_HANDLED : IRQ_NONE;
}
