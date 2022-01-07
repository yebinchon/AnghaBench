
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ epx_c3_alive ;
 int epx_c3_stop () ;
 int nowayout ;

__attribute__((used)) static int epx_c3_release(struct inode *inode, struct file *file)
{


 if (!nowayout)
  epx_c3_stop();

 epx_c3_alive = 0;

 return 0;
}
