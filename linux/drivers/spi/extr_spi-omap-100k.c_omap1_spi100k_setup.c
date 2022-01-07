
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int chip_select; int master; struct omap1_spi100k_cs* controller_state; int dev; } ;
struct omap1_spi100k_cs {scalar_t__ base; } ;
struct omap1_spi100k {int fck; int ick; scalar_t__ base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct omap1_spi100k_cs* devm_kzalloc (int *,int,int ) ;
 int omap1_spi100k_setup_transfer (struct spi_device*,int *) ;
 int spi100k_open (int ) ;
 struct omap1_spi100k* spi_master_get_devdata (int ) ;

__attribute__((used)) static int omap1_spi100k_setup(struct spi_device *spi)
{
 int ret;
 struct omap1_spi100k *spi100k;
 struct omap1_spi100k_cs *cs = spi->controller_state;

 spi100k = spi_master_get_devdata(spi->master);

 if (!cs) {
  cs = devm_kzalloc(&spi->dev, sizeof(*cs), GFP_KERNEL);
  if (!cs)
   return -ENOMEM;
  cs->base = spi100k->base + spi->chip_select * 0x14;
  spi->controller_state = cs;
 }

 spi100k_open(spi->master);

 clk_prepare_enable(spi100k->ick);
 clk_prepare_enable(spi100k->fck);

 ret = omap1_spi100k_setup_transfer(spi, ((void*)0));

 clk_disable_unprepare(spi100k->ick);
 clk_disable_unprepare(spi100k->fck);

 return ret;
}
