
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dev; int ops_lock; int * ops; int char_dev; } ;


 int cdev_device_del (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int rtc_proc_del_device (struct rtc_device*) ;

__attribute__((used)) static void rtc_device_unregister(struct rtc_device *rtc)
{
 mutex_lock(&rtc->ops_lock);




 rtc_proc_del_device(rtc);
 cdev_device_del(&rtc->char_dev, &rtc->dev);
 rtc->ops = ((void*)0);
 mutex_unlock(&rtc->ops_lock);
 put_device(&rtc->dev);
}
