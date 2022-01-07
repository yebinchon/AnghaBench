
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_dev {int dummy; } ;


 int IDT_INMSG_MASK ;

__attribute__((used)) static u64 idt_ntb_msg_inbits(struct ntb_dev *ntb)
{
 return (u64)IDT_INMSG_MASK;
}
