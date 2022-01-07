
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct wm831x_rtc {int alarm_enabled; TYPE_1__* rtc; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct TYPE_11__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_10__ {int range_max; int * ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int U32_MAX ;
 int WM831X_RTC_ALM_ENA ;
 int WM831X_RTC_CONTROL ;
 int dev_err (TYPE_3__*,char*,int,...) ;
 struct wm831x* dev_get_drvdata (int ) ;
 int device_init_wakeup (TYPE_3__*,int) ;
 struct wm831x_rtc* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_3__*,int,int *,int ,int,char*,struct wm831x_rtc*) ;
 TYPE_1__* devm_rtc_allocate_device (TYPE_3__*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct wm831x_rtc*) ;
 int rtc_register_device (TYPE_1__*) ;
 int wm831x_alm_irq ;
 int wm831x_irq (struct wm831x*,int ) ;
 int wm831x_reg_read (struct wm831x*,int ) ;
 int wm831x_rtc_add_randomness (struct wm831x*) ;
 int wm831x_rtc_ops ;

__attribute__((used)) static int wm831x_rtc_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_rtc *wm831x_rtc;
 int alm_irq = wm831x_irq(wm831x, platform_get_irq_byname(pdev, "ALM"));
 int ret = 0;

 wm831x_rtc = devm_kzalloc(&pdev->dev, sizeof(*wm831x_rtc), GFP_KERNEL);
 if (wm831x_rtc == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, wm831x_rtc);
 wm831x_rtc->wm831x = wm831x;

 ret = wm831x_reg_read(wm831x, WM831X_RTC_CONTROL);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to read RTC control: %d\n", ret);
  return ret;
 }
 if (ret & WM831X_RTC_ALM_ENA)
  wm831x_rtc->alarm_enabled = 1;

 device_init_wakeup(&pdev->dev, 1);

 wm831x_rtc->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(wm831x_rtc->rtc))
  return PTR_ERR(wm831x_rtc->rtc);

 wm831x_rtc->rtc->ops = &wm831x_rtc_ops;
 wm831x_rtc->rtc->range_max = U32_MAX;

 ret = rtc_register_device(wm831x_rtc->rtc);
 if (ret)
  return ret;

 ret = devm_request_threaded_irq(&pdev->dev, alm_irq, ((void*)0),
    wm831x_alm_irq,
    IRQF_TRIGGER_RISING | IRQF_ONESHOT,
    "RTC alarm",
    wm831x_rtc);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to request alarm IRQ %d: %d\n",
   alm_irq, ret);
 }

 wm831x_rtc_add_randomness(wm831x);

 return 0;
}
