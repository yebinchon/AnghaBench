
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int identity; } ;


 int THIS_MODULE ;
 int __raw_writeb (int ,int ) ;
 int clear_bit (int ,int *) ;
 int expect_close ;
 TYPE_1__ ident ;
 int module_put (int ) ;
 int pr_crit (char*,int ) ;
 int sbwdog_gate ;
 int sbwdog_pet (int ) ;
 int user_dog ;

__attribute__((used)) static int sbwdog_release(struct inode *inode, struct file *file)
{
 if (expect_close == 42) {
  __raw_writeb(0, user_dog);
  module_put(THIS_MODULE);
 } else {
  pr_crit("%s: Unexpected close, not stopping watchdog!\n",
   ident.identity);
  sbwdog_pet(user_dog);
 }
 clear_bit(0, &sbwdog_gate);
 expect_close = 0;

 return 0;
}
