
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct rtc_device {int ops_lock; TYPE_2__ dev; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_offset ) (int ,long) ;} ;


 int EINVAL ;
 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,long) ;
 int trace_rtc_set_offset (long,int) ;

int rtc_set_offset(struct rtc_device *rtc, long offset)
{
 int ret;

 if (!rtc->ops)
  return -ENODEV;

 if (!rtc->ops->set_offset)
  return -EINVAL;

 mutex_lock(&rtc->ops_lock);
 ret = rtc->ops->set_offset(rtc->dev.parent, offset);
 mutex_unlock(&rtc->ops_lock);

 trace_rtc_set_offset(offset, ret);
 return ret;
}
