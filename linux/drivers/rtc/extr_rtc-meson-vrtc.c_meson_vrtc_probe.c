
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct meson_vrtc_data {TYPE_1__* rtc; TYPE_1__* io_alarm; } ;
struct TYPE_6__ {int * ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int device_init_wakeup (int *,int) ;
 struct meson_vrtc_data* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int meson_vrtc_ops ;
 int platform_set_drvdata (struct platform_device*,struct meson_vrtc_data*) ;
 int rtc_register_device (TYPE_1__*) ;

__attribute__((used)) static int meson_vrtc_probe(struct platform_device *pdev)
{
 struct meson_vrtc_data *vrtc;
 int ret;

 vrtc = devm_kzalloc(&pdev->dev, sizeof(*vrtc), GFP_KERNEL);
 if (!vrtc)
  return -ENOMEM;

 vrtc->io_alarm = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(vrtc->io_alarm))
  return PTR_ERR(vrtc->io_alarm);

 device_init_wakeup(&pdev->dev, 1);

 platform_set_drvdata(pdev, vrtc);

 vrtc->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(vrtc->rtc))
  return PTR_ERR(vrtc->rtc);

 vrtc->rtc->ops = &meson_vrtc_ops;
 ret = rtc_register_device(vrtc->rtc);
 if (ret)
  return ret;

 return 0;
}
