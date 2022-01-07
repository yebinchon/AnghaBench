
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_sdio_glue {int dev; } ;
struct sdio_func {int dummy; } ;
struct device {int parent; } ;


 struct wl12xx_sdio_glue* dev_get_drvdata (int ) ;
 struct sdio_func* dev_to_sdio_func (int ) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_block_size (struct sdio_func*,unsigned int) ;

__attribute__((used)) static void wl1271_sdio_set_block_size(struct device *child,
           unsigned int blksz)
{
 struct wl12xx_sdio_glue *glue = dev_get_drvdata(child->parent);
 struct sdio_func *func = dev_to_sdio_func(glue->dev);

 sdio_claim_host(func);
 sdio_set_block_size(func, blksz);
 sdio_release_host(func);
}
