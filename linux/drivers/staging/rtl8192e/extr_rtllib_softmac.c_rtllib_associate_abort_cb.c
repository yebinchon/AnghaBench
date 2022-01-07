
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rtllib_device {int dummy; } ;


 int associate_timer ;
 struct rtllib_device* dev ;
 struct rtllib_device* from_timer (int ,struct timer_list*,int ) ;
 int rtllib_associate_abort (struct rtllib_device*) ;

__attribute__((used)) static void rtllib_associate_abort_cb(struct timer_list *t)
{
 struct rtllib_device *dev = from_timer(dev, t, associate_timer);

 rtllib_associate_abort(dev);
}
