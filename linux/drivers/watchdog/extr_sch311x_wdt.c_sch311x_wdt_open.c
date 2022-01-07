
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int sch311x_wdt_is_open ;
 int sch311x_wdt_start () ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int sch311x_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &sch311x_wdt_is_open))
  return -EBUSY;



 sch311x_wdt_start();
 return stream_open(inode, file);
}
