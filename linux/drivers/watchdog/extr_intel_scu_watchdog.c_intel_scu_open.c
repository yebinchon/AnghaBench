
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ driver_closed; int driver_open; } ;


 int EBUSY ;
 int EPERM ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 TYPE_1__ watchdog_device ;

__attribute__((used)) static int intel_scu_open(struct inode *inode, struct file *file)
{


 if (test_and_set_bit(0, &watchdog_device.driver_open))
  return -EBUSY;


 if (watchdog_device.driver_closed)
  return -EPERM;

 return stream_open(inode, file);
}
