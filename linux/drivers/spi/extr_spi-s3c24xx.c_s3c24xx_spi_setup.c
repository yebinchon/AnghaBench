
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {struct s3c24xx_spi_devstate* controller_state; int dev; } ;
struct s3c24xx_spi_devstate {int hz; int spcon; } ;
struct TYPE_2__ {int lock; int (* chipselect ) (struct spi_device*,int ) ;int busy; } ;
struct s3c24xx_spi {TYPE_1__ bitbang; } ;


 int BITBANG_CS_INACTIVE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPCON_DEFAULT ;
 struct s3c24xx_spi_devstate* devm_kzalloc (int *,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s3c24xx_spi_update_state (struct spi_device*,int *) ;
 int stub1 (struct spi_device*,int ) ;
 struct s3c24xx_spi* to_hw (struct spi_device*) ;

__attribute__((used)) static int s3c24xx_spi_setup(struct spi_device *spi)
{
 struct s3c24xx_spi_devstate *cs = spi->controller_state;
 struct s3c24xx_spi *hw = to_hw(spi);
 int ret;


 if (!cs) {
  cs = devm_kzalloc(&spi->dev,
      sizeof(struct s3c24xx_spi_devstate),
      GFP_KERNEL);
  if (!cs)
   return -ENOMEM;

  cs->spcon = SPCON_DEFAULT;
  cs->hz = -1;
  spi->controller_state = cs;
 }


 ret = s3c24xx_spi_update_state(spi, ((void*)0));
 if (ret)
  return ret;

 mutex_lock(&hw->bitbang.lock);
 if (!hw->bitbang.busy) {
  hw->bitbang.chipselect(spi, BITBANG_CS_INACTIVE);

 }
 mutex_unlock(&hw->bitbang.lock);

 return 0;
}
