
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int open_lock ;
 int scx200_wdt_enable () ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int scx200_wdt_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &open_lock))
  return -EBUSY;
 scx200_wdt_enable();

 return stream_open(inode, file);
}
