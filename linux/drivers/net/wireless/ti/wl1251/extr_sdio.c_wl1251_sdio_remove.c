
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251_sdio {int dummy; } ;
struct wl1251 {scalar_t__ irq; struct wl1251_sdio* if_priv; } ;
struct sdio_func {int dev; } ;


 int free_irq (scalar_t__,struct wl1251*) ;
 int kfree (struct wl1251_sdio*) ;
 int pm_runtime_get_noresume (int *) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 struct wl1251* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int wl1251_free_hw (struct wl1251*) ;

__attribute__((used)) static void wl1251_sdio_remove(struct sdio_func *func)
{
 struct wl1251 *wl = sdio_get_drvdata(func);
 struct wl1251_sdio *wl_sdio = wl->if_priv;


 pm_runtime_get_noresume(&func->dev);

 if (wl->irq)
  free_irq(wl->irq, wl);
 wl1251_free_hw(wl);
 kfree(wl_sdio);

 sdio_claim_host(func);
 sdio_release_irq(func);
 sdio_disable_func(func);
 sdio_release_host(func);
}
