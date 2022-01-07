
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int WDT_FLAGS_OPEN ;
 int WDT_FLAGS_ORPHAN ;
 int __module_get (int ) ;
 int geodewdt_ping () ;
 int stream_open (struct inode*,struct file*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_flags ;

__attribute__((used)) static int geodewdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(WDT_FLAGS_OPEN, &wdt_flags))
  return -EBUSY;

 if (!test_and_clear_bit(WDT_FLAGS_ORPHAN, &wdt_flags))
  __module_get(THIS_MODULE);

 geodewdt_ping();
 return stream_open(inode, file);
}
