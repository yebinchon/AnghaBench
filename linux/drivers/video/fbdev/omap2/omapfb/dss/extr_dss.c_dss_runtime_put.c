
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DSSDBG (char*) ;
 int EBUSY ;
 int ENOSYS ;
 int WARN_ON (int) ;
 TYPE_2__ dss ;
 int pm_runtime_put_sync (int *) ;

void dss_runtime_put(void)
{
 int r;

 DSSDBG("dss_runtime_put\n");

 r = pm_runtime_put_sync(&dss.pdev->dev);
 WARN_ON(r < 0 && r != -ENOSYS && r != -EBUSY);
}
