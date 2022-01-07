
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ expect_close; int open; int timer; } ;


 int clear_bit (int ,int *) ;
 int del_timer (int *) ;
 TYPE_1__ pikawdt_private ;

__attribute__((used)) static int pikawdt_release(struct inode *inode, struct file *file)
{

 if (!pikawdt_private.expect_close)
  del_timer(&pikawdt_private.timer);

 clear_bit(0, &pikawdt_private.open);
 pikawdt_private.expect_close = 0;
 return 0;
}
