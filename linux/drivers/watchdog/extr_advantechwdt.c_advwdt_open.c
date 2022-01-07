
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int advwdt_is_open ;
 int advwdt_ping () ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int advwdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &advwdt_is_open))
  return -EBUSY;




 advwdt_ping();
 return stream_open(inode, file);
}
