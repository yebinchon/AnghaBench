
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt_ntb_dev {int part; int mtbl_lock; } ;


 int IDT_NTCTL_CPEN ;
 int IDT_NTGSIGNAL_SET ;
 int IDT_NTMTBLDATA_VALID ;
 int IDT_NT_NTCTL ;
 int IDT_NT_NTGSIGNAL ;
 int IDT_NT_NTMTBLADDR ;
 int IDT_NT_NTMTBLDATA ;
 int IDT_NT_REQIDCAP ;
 int IDT_SW_SEGSIGSTS ;
 int NTMTBLDATA_PART ;
 int NTMTBLDATA_REQID ;
 int SET_FIELD (int ,int ,int) ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 int idt_nt_write (struct idt_ntb_dev*,int ,int) ;
 int idt_sw_write (struct idt_ntb_dev*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void idt_ntb_local_link_enable(struct idt_ntb_dev *ndev)
{
 u32 reqid, mtbldata = 0;
 unsigned long irqflags;


 idt_nt_write(ndev, IDT_NT_NTCTL, IDT_NTCTL_CPEN);


 reqid = idt_nt_read(ndev, IDT_NT_REQIDCAP);





 mtbldata = SET_FIELD(NTMTBLDATA_REQID, 0, reqid) |
     SET_FIELD(NTMTBLDATA_PART, 0, ndev->part) |
     IDT_NTMTBLDATA_VALID;
 spin_lock_irqsave(&ndev->mtbl_lock, irqflags);
 idt_nt_write(ndev, IDT_NT_NTMTBLADDR, ndev->part);
 idt_nt_write(ndev, IDT_NT_NTMTBLDATA, mtbldata);
 spin_unlock_irqrestore(&ndev->mtbl_lock, irqflags);


 idt_nt_write(ndev, IDT_NT_NTGSIGNAL, IDT_NTGSIGNAL_SET);
 idt_sw_write(ndev, IDT_SW_SEGSIGSTS, (u32)1 << ndev->part);
}
