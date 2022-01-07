
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct spi_transfer {scalar_t__ bits_per_word; int speed_hz; } ;
struct spi_ppc4xx_cs {scalar_t__ mode; } ;
struct spi_device {scalar_t__ bits_per_word; int max_speed_hz; int dev; struct spi_ppc4xx_cs* controller_state; int master; } ;
struct TYPE_4__ {int lock; int (* chipselect ) (struct spi_device*,int ) ;int busy; } ;
struct ppc4xx_spi {int opb_freq; TYPE_2__ bitbang; TYPE_1__* regs; } ;
struct TYPE_3__ {int cdm; int mode; } ;


 int BITBANG_CS_INACTIVE ;
 int EINVAL ;
 int dev_dbg (int *,char*,scalar_t__,int) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ in_8 (int *) ;
 void* min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int out_8 (int *,scalar_t__) ;
 struct ppc4xx_spi* spi_master_get_devdata (int ) ;
 int stub1 (struct spi_device*,int ) ;

__attribute__((used)) static int spi_ppc4xx_setupxfer(struct spi_device *spi, struct spi_transfer *t)
{
 struct ppc4xx_spi *hw = spi_master_get_devdata(spi->master);
 struct spi_ppc4xx_cs *cs = spi->controller_state;
 int scr;
 u8 cdm = 0;
 u32 speed;
 u8 bits_per_word;


 bits_per_word = spi->bits_per_word;
 speed = spi->max_speed_hz;





 if (t) {
  if (t->bits_per_word)
   bits_per_word = t->bits_per_word;

  if (t->speed_hz)
   speed = min(t->speed_hz, spi->max_speed_hz);
 }

 if (!speed || (speed > spi->max_speed_hz)) {
  dev_err(&spi->dev, "invalid speed_hz (%d)\n", speed);
  return -EINVAL;
 }


 out_8(&hw->regs->mode, cs->mode);



 scr = (hw->opb_freq / speed) - 1;
 if (scr > 0)
  cdm = min(scr, 0xff);

 dev_dbg(&spi->dev, "setting pre-scaler to %d (hz %d)\n", cdm, speed);

 if (in_8(&hw->regs->cdm) != cdm)
  out_8(&hw->regs->cdm, cdm);

 mutex_lock(&hw->bitbang.lock);
 if (!hw->bitbang.busy) {
  hw->bitbang.chipselect(spi, BITBANG_CS_INACTIVE);

 }
 mutex_unlock(&hw->bitbang.lock);

 return 0;
}
