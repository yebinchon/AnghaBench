
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ expires; } ;
struct rtc_test_data {TYPE_2__* rtc; TYPE_1__ alarm; } ;
struct platform_device {int id; int dev; } ;
struct TYPE_7__ {int * ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int device_init_wakeup (int *,int) ;
 struct rtc_test_data* devm_kzalloc (int *,int,int ) ;
 TYPE_2__* devm_rtc_allocate_device (int *) ;
 int platform_set_drvdata (struct platform_device*,struct rtc_test_data*) ;
 int rtc_register_device (TYPE_2__*) ;
 int test_rtc_alarm_handler ;
 int test_rtc_ops ;
 int test_rtc_ops_noalm ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int test_probe(struct platform_device *plat_dev)
{
 struct rtc_test_data *rtd;

 rtd = devm_kzalloc(&plat_dev->dev, sizeof(*rtd), GFP_KERNEL);
 if (!rtd)
  return -ENOMEM;

 platform_set_drvdata(plat_dev, rtd);

 rtd->rtc = devm_rtc_allocate_device(&plat_dev->dev);
 if (IS_ERR(rtd->rtc))
  return PTR_ERR(rtd->rtc);

 switch (plat_dev->id) {
 case 0:
  rtd->rtc->ops = &test_rtc_ops_noalm;
  break;
 default:
  rtd->rtc->ops = &test_rtc_ops;
  device_init_wakeup(&plat_dev->dev, 1);
 }

 timer_setup(&rtd->alarm, test_rtc_alarm_handler, 0);
 rtd->alarm.expires = 0;

 return rtc_register_device(rtd->rtc);
}
