
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dss_uninit_overlay_managers () ;
 int pm_runtime_disable (struct device*) ;

__attribute__((used)) static void dispc_unbind(struct device *dev, struct device *master,
          void *data)
{
 pm_runtime_disable(dev);

 dss_uninit_overlay_managers();
}
