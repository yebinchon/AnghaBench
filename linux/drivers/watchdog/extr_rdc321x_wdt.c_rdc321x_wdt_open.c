
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int inuse; } ;


 int EBUSY ;
 TYPE_1__ rdc321x_wdt_device ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int rdc321x_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &rdc321x_wdt_device.inuse))
  return -EBUSY;

 return stream_open(inode, file);
}
