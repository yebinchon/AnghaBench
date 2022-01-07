
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_sdio_glue {int core; } ;
struct sdio_func {int dev; } ;


 int platform_device_unregister (int ) ;
 int pm_runtime_get_noresume (int *) ;
 struct wl12xx_sdio_glue* sdio_get_drvdata (struct sdio_func*) ;

__attribute__((used)) static void wl1271_remove(struct sdio_func *func)
{
 struct wl12xx_sdio_glue *glue = sdio_get_drvdata(func);


 pm_runtime_get_noresume(&func->dev);

 platform_device_unregister(glue->core);
}
