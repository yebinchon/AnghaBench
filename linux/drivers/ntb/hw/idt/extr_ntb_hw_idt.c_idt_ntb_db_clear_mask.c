
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int db_mask_lock; } ;


 int IDT_NT_INDBELLMSK ;
 int idt_reg_clear_bits (struct idt_ntb_dev*,int ,int *,int ) ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_db_clear_mask(struct ntb_dev *ntb, u64 db_bits)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);

 idt_reg_clear_bits(ndev, IDT_NT_INDBELLMSK, &ndev->db_mask_lock,
      db_bits);

 return 0;
}
