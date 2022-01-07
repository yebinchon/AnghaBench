
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 scalar_t__ nowayout ;
 int pnx833x_wdt_alive ;
 int pnx833x_wdt_ping () ;
 int pnx833x_wdt_start () ;
 int pr_info (char*) ;
 int start_enabled ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int pnx833x_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &pnx833x_wdt_alive))
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);


 if (!start_enabled)
  pnx833x_wdt_start();

 pnx833x_wdt_ping();

 pr_info("Started watchdog timer\n");

 return stream_open(inode, file);
}
