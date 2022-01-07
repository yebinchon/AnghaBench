
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl022 {int pump_transfers; int clk; TYPE_1__* master_info; } ;
struct amba_device {int dev; } ;
struct TYPE_2__ {scalar_t__ enable_dma; } ;


 struct pl022* amba_get_drvdata (struct amba_device*) ;
 int amba_release_regions (struct amba_device*) ;
 int clk_disable_unprepare (int ) ;
 int load_ssp_default_config (struct pl022*) ;
 int pl022_dma_remove (struct pl022*) ;
 int pm_runtime_get_noresume (int *) ;
 int tasklet_disable (int *) ;

__attribute__((used)) static int
pl022_remove(struct amba_device *adev)
{
 struct pl022 *pl022 = amba_get_drvdata(adev);

 if (!pl022)
  return 0;





 pm_runtime_get_noresume(&adev->dev);

 load_ssp_default_config(pl022);
 if (pl022->master_info->enable_dma)
  pl022_dma_remove(pl022);

 clk_disable_unprepare(pl022->clk);
 amba_release_regions(adev);
 tasklet_disable(&pl022->pump_transfers);
 return 0;
}
