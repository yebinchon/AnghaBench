
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DSSDBG (char*) ;
 int WARN_ON (int) ;
 TYPE_2__ dispc ;
 int pm_runtime_get_sync (int *) ;

int dispc_runtime_get(void)
{
 int r;

 DSSDBG("dispc_runtime_get\n");

 r = pm_runtime_get_sync(&dispc.pdev->dev);
 WARN_ON(r < 0);
 return r < 0 ? r : 0;
}
