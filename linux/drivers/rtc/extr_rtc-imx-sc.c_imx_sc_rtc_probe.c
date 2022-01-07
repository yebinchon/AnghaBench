
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_6__ {int range_max; scalar_t__ range_min; int * ops; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int U32_MAX ;
 int device_init_wakeup (int *,int) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 TYPE_1__* imx_sc_rtc ;
 int imx_sc_rtc_alarm_sc_notifier ;
 int imx_sc_rtc_ops ;
 int imx_scu_get_handle (int *) ;
 int imx_scu_irq_register_notifier (int *) ;
 int rtc_ipc_handle ;
 int rtc_register_device (TYPE_1__*) ;

__attribute__((used)) static int imx_sc_rtc_probe(struct platform_device *pdev)
{
 int ret;

 ret = imx_scu_get_handle(&rtc_ipc_handle);
 if (ret)
  return ret;

 device_init_wakeup(&pdev->dev, 1);

 imx_sc_rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(imx_sc_rtc))
  return PTR_ERR(imx_sc_rtc);

 imx_sc_rtc->ops = &imx_sc_rtc_ops;
 imx_sc_rtc->range_min = 0;
 imx_sc_rtc->range_max = U32_MAX;

 ret = rtc_register_device(imx_sc_rtc);
 if (ret)
  return ret;

 imx_scu_irq_register_notifier(&imx_sc_rtc_alarm_sc_notifier);

 return 0;
}
