
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int indydog_alive ;
 int indydog_ping () ;
 int indydog_start () ;
 scalar_t__ nowayout ;
 int pr_info (char*) ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int indydog_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &indydog_alive))
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);


 indydog_start();
 indydog_ping();

 pr_info("Started watchdog timer\n");

 return stream_open(inode, file);
}
