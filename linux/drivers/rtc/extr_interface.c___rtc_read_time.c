
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_time {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct rtc_device {TYPE_2__ dev; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* read_time ) (int ,struct rtc_time*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int dev_dbg (TYPE_2__*,char*,...) ;
 int memset (struct rtc_time*,int ,int) ;
 int rtc_add_offset (struct rtc_device*,struct rtc_time*) ;
 int rtc_valid_tm (struct rtc_time*) ;
 int stub1 (int ,struct rtc_time*) ;

__attribute__((used)) static int __rtc_read_time(struct rtc_device *rtc, struct rtc_time *tm)
{
 int err;

 if (!rtc->ops) {
  err = -ENODEV;
 } else if (!rtc->ops->read_time) {
  err = -EINVAL;
 } else {
  memset(tm, 0, sizeof(struct rtc_time));
  err = rtc->ops->read_time(rtc->dev.parent, tm);
  if (err < 0) {
   dev_dbg(&rtc->dev, "read_time: fail to read: %d\n",
    err);
   return err;
  }

  rtc_add_offset(rtc, tm);

  err = rtc_valid_tm(tm);
  if (err < 0)
   dev_dbg(&rtc->dev, "read_time: rtc_time isn't valid\n");
 }
 return err;
}
