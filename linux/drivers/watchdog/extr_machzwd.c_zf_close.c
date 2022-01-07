
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int del_timer (int *) ;
 int pr_err (char*) ;
 int zf_expect_close ;
 int zf_is_open ;
 int zf_timer ;
 int zf_timer_off () ;

__attribute__((used)) static int zf_close(struct inode *inode, struct file *file)
{
 if (zf_expect_close == 42)
  zf_timer_off();
 else {
  del_timer(&zf_timer);
  pr_err("device file closed unexpectedly. Will not stop the WDT!\n");
 }
 clear_bit(0, &zf_is_open);
 zf_expect_close = 0;
 return 0;
}
