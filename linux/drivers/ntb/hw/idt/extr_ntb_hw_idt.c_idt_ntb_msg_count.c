
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int dummy; } ;


 int IDT_MSG_CNT ;

__attribute__((used)) static int idt_ntb_msg_count(struct ntb_dev *ntb)
{
 return IDT_MSG_CNT;
}
