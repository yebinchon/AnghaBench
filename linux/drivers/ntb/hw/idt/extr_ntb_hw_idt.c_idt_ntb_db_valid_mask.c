
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_dev {int dummy; } ;


 int IDT_DBELL_MASK ;

__attribute__((used)) static u64 idt_ntb_db_valid_mask(struct ntb_dev *ntb)
{
 return IDT_DBELL_MASK;
}
