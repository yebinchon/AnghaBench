
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_close ;
 int pr_crit (char*) ;
 int sbc8360_is_open ;
 int sbc8360_stop () ;

__attribute__((used)) static int sbc8360_close(struct inode *inode, struct file *file)
{
 if (expect_close == 42)
  sbc8360_stop();
 else
  pr_crit("SBC8360 device closed unexpectedly.  SBC8360 will not stop!\n");

 clear_bit(0, &sbc8360_is_open);
 expect_close = 0;
 return 0;
}
