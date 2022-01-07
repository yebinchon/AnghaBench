
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_device_data {int exist; int dev; int wq; } ;


 int put_device (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void hangup_device(struct event_device_data *dev_data)
{
 dev_data->exist = 0;

 wake_up_interruptible(&dev_data->wq);
 put_device(&dev_data->dev);
}
