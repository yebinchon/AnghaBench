
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt_ntb_dev {int mtbl_lock; int part; } ;


 int IDT_NTCTL_CPEN ;
 int IDT_NTMTBLDATA_VALID ;
 int IDT_NT_NTCTL ;
 int IDT_NT_NTMTBLADDR ;
 int IDT_NT_NTMTBLDATA ;
 int IDT_NT_PCICMDSTS ;
 int IDT_PCICMDSTS_BME ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 int idt_nt_write (struct idt_ntb_dev*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool idt_ntb_local_link_is_up(struct idt_ntb_dev *ndev)
{
 unsigned long irqflags;
 u32 data;


 data = idt_nt_read(ndev, IDT_NT_PCICMDSTS);
 if (!(data & IDT_PCICMDSTS_BME))
  return 0;


 data = idt_nt_read(ndev, IDT_NT_NTCTL);
 if (!(data & IDT_NTCTL_CPEN))
  return 0;


 spin_lock_irqsave(&ndev->mtbl_lock, irqflags);
 idt_nt_write(ndev, IDT_NT_NTMTBLADDR, ndev->part);
 data = idt_nt_read(ndev, IDT_NT_NTMTBLDATA);
 spin_unlock_irqrestore(&ndev->mtbl_lock, irqflags);

 return !!(data & IDT_NTMTBLDATA_VALID);
}
