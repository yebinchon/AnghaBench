
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; } ;
struct TYPE_3__ {int dev; } ;


 int IDT_NTINTSTS_SEVENT ;
 int IDT_NT_NTINTSTS ;
 int IDT_SW_SEGSIGSTS ;
 int IDT_SW_SELINKDNSTS ;
 int IDT_SW_SELINKUPSTS ;
 int IDT_SW_SESTS ;
 int dev_dbg (int *,char*,int ,int ) ;
 int idt_nt_write (struct idt_ntb_dev*,int ,int ) ;
 int idt_sw_read (struct idt_ntb_dev*,int ) ;
 int idt_sw_write (struct idt_ntb_dev*,int ,int ) ;
 int ntb_link_event (TYPE_2__*) ;

__attribute__((used)) static void idt_se_isr(struct idt_ntb_dev *ndev, u32 ntint_sts)
{
 u32 sests;


 sests = idt_sw_read(ndev, IDT_SW_SESTS);


 idt_sw_write(ndev, IDT_SW_SELINKUPSTS, (u32)-1);
 idt_sw_write(ndev, IDT_SW_SELINKDNSTS, (u32)-1);
 idt_sw_write(ndev, IDT_SW_SEGSIGSTS, (u32)-1);


 idt_nt_write(ndev, IDT_NT_NTINTSTS, IDT_NTINTSTS_SEVENT);

 dev_dbg(&ndev->ntb.pdev->dev, "SE IRQ detected %#08x (SESTS %#08x)",
     ntint_sts, sests);


 ntb_link_event(&ndev->ntb);
}
