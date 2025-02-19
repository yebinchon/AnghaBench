
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int nbytes; } ;
struct TYPE_5__ {int buswidth; } ;
struct spi_mem_op {TYPE_2__ addr; TYPE_1__ data; } ;
struct TYPE_8__ {int flex_mode; int width; int addrlen; int hp; } ;
struct bcm_qspi {int s3_strap_override_ctrl; TYPE_4__ xfer_mode; int curr_cs; TYPE_3__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int BSPI ;
 int BSPI_FLEX_MODE_ENABLE ;
 int BSPI_STRAP_OVERRIDE_CTRL ;
 int BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE ;
 int SPI_NBITS_SINGLE ;
 int bcm_qspi_bspi_set_flex_mode (struct bcm_qspi*,struct spi_mem_op const*,int) ;
 int bcm_qspi_bspi_set_override (struct bcm_qspi*,struct spi_mem_op const*,int) ;
 int bcm_qspi_bspi_ver_three (struct bcm_qspi*) ;
 int bcm_qspi_read (struct bcm_qspi*,int ,int ) ;
 int bcm_qspi_write (struct bcm_qspi*,int ,int ,int ) ;
 int dev_dbg (int *,char*,int ,int,int,char*) ;
 int dev_warn (int *,char*,int,int,int) ;

__attribute__((used)) static int bcm_qspi_bspi_set_mode(struct bcm_qspi *qspi,
      const struct spi_mem_op *op, int hp)
{
 int error = 0;
 int width = op->data.buswidth ? op->data.buswidth : SPI_NBITS_SINGLE;
 int addrlen = op->addr.nbytes;


 qspi->xfer_mode.flex_mode = 1;

 if (!bcm_qspi_bspi_ver_three(qspi)) {
  u32 val, mask;

  val = bcm_qspi_read(qspi, BSPI, BSPI_STRAP_OVERRIDE_CTRL);
  mask = BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE;
  if (val & mask || qspi->s3_strap_override_ctrl & mask) {
   qspi->xfer_mode.flex_mode = 0;
   bcm_qspi_write(qspi, BSPI, BSPI_FLEX_MODE_ENABLE, 0);
   error = bcm_qspi_bspi_set_override(qspi, op, hp);
  }
 }

 if (qspi->xfer_mode.flex_mode)
  error = bcm_qspi_bspi_set_flex_mode(qspi, op, hp);

 if (error) {
  dev_warn(&qspi->pdev->dev,
    "INVALID COMBINATION: width=%d addrlen=%d hp=%d\n",
    width, addrlen, hp);
 } else if (qspi->xfer_mode.width != width ||
     qspi->xfer_mode.addrlen != addrlen ||
     qspi->xfer_mode.hp != hp) {
  qspi->xfer_mode.width = width;
  qspi->xfer_mode.addrlen = addrlen;
  qspi->xfer_mode.hp = hp;
  dev_dbg(&qspi->pdev->dev,
   "cs:%d %d-lane output, %d-byte address%s\n",
   qspi->curr_cs,
   qspi->xfer_mode.width,
   qspi->xfer_mode.addrlen,
   qspi->xfer_mode.hp != -1 ? ", hp mode" : "");
 }

 return error;
}
