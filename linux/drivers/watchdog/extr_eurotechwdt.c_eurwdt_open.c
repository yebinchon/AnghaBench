
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int WDT_TIMEOUT ;
 int eurwdt_activate_timer () ;
 int eurwdt_is_open ;
 int eurwdt_timeout ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int eurwdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &eurwdt_is_open))
  return -EBUSY;
 eurwdt_timeout = WDT_TIMEOUT;

 eurwdt_activate_timer();
 return stream_open(inode, file);
}
