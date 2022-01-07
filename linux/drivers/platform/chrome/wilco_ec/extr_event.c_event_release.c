
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct event_device_data* private_data; } ;
struct event_device_data {int dev; int available; } ;


 int atomic_set (int *,int) ;
 int put_device (int *) ;

__attribute__((used)) static int event_release(struct inode *inode, struct file *filp)
{
 struct event_device_data *dev_data = filp->private_data;

 atomic_set(&dev_data->available, 1);
 put_device(&dev_data->dev);

 return 0;
}
