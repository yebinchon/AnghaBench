
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int epx_c3_alive ;
 int epx_c3_pet () ;
 int epx_c3_start () ;
 scalar_t__ nowayout ;
 int pr_info (char*) ;
 int stream_open (struct inode*,struct file*) ;

__attribute__((used)) static int epx_c3_open(struct inode *inode, struct file *file)
{
 if (epx_c3_alive)
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);


 epx_c3_start();
 epx_c3_pet();

 epx_c3_alive = 1;
 pr_info("Started watchdog timer\n");

 return stream_open(inode, file);
}
