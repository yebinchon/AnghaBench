
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int mutex; } ;
struct file {scalar_t__ private_data; } ;


 int DBF_EVENT (int,char*) ;
 long __tapechar_ioctl (struct tape_device*,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long
tapechar_ioctl(struct file *filp, unsigned int no, unsigned long data)
{
 struct tape_device *device;
 long rc;

 DBF_EVENT(6, "TCHAR:ioct\n");

 device = (struct tape_device *) filp->private_data;
 mutex_lock(&device->mutex);
 rc = __tapechar_ioctl(device, no, data);
 mutex_unlock(&device->mutex);
 return rc;
}
