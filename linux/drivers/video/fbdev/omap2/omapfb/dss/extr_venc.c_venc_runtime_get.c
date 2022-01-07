
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
 int pm_runtime_get_sync (int *) ;
 TYPE_2__ venc ;

__attribute__((used)) static int venc_runtime_get(void)
{
 int r;

 DSSDBG("venc_runtime_get\n");

 r = pm_runtime_get_sync(&venc.pdev->dev);
 WARN_ON(r < 0);
 return r < 0 ? r : 0;
}
