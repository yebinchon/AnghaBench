
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int dummy; } ;


 int IDT_NT_MSGSTS ;
 int idt_nt_write (struct idt_ntb_dev*,int ,int ) ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_msg_clear_sts(struct ntb_dev *ntb, u64 sts_bits)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);

 idt_nt_write(ndev, IDT_NT_MSGSTS, sts_bits);

 return 0;
}
