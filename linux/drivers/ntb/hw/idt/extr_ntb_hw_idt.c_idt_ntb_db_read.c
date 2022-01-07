
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int dummy; } ;


 int IDT_NT_INDBELLSTS ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static u64 idt_ntb_db_read(struct ntb_dev *ntb)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);

 return idt_nt_read(ndev, IDT_NT_INDBELLSTS);
}
