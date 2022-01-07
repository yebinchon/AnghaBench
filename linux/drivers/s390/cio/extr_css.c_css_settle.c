
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct css_driver {int (* settle ) () ;} ;


 int stub1 () ;
 struct css_driver* to_cssdriver (struct device_driver*) ;

__attribute__((used)) static int css_settle(struct device_driver *drv, void *unused)
{
 struct css_driver *cssdrv = to_cssdriver(drv);

 if (cssdrv->settle)
  return cssdrv->settle();
 return 0;
}
