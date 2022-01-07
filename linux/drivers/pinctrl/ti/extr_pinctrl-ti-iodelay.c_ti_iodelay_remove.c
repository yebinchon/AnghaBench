
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_iodelay_device {scalar_t__ pctl; } ;
struct platform_device {int dummy; } ;


 int pinctrl_unregister (scalar_t__) ;
 struct ti_iodelay_device* platform_get_drvdata (struct platform_device*) ;
 int ti_iodelay_pinconf_deinit_dev (struct ti_iodelay_device*) ;

__attribute__((used)) static int ti_iodelay_remove(struct platform_device *pdev)
{
 struct ti_iodelay_device *iod = platform_get_drvdata(pdev);

 if (!iod)
  return 0;

 if (iod->pctl)
  pinctrl_unregister(iod->pctl);

 ti_iodelay_pinconf_deinit_dev(iod);



 return 0;
}
