
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct spi_message {int actual_length; } ;
struct fsl_dspi {int bytes_per_word; int len; TYPE_1__* devtype_data; int regmap; struct spi_message* cur_msg; } ;
typedef enum dspi_trans_mode { ____Placeholder_dspi_trans_mode } dspi_trans_mode ;
struct TYPE_2__ {int trans_mode; } ;


 int DSPI_EOQ_MODE ;
 int DSPI_TCFQ_MODE ;
 int EINPROGRESS ;
 int SPI_TCR ;
 int SPI_TCR_GET_TCNT (int ) ;
 int dspi_eoq_read (struct fsl_dspi*) ;
 int dspi_eoq_write (struct fsl_dspi*) ;
 int dspi_tcfq_read (struct fsl_dspi*) ;
 int dspi_tcfq_write (struct fsl_dspi*) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static int dspi_rxtx(struct fsl_dspi *dspi)
{
 struct spi_message *msg = dspi->cur_msg;
 enum dspi_trans_mode trans_mode;
 u16 spi_tcnt;
 u32 spi_tcr;




 regmap_read(dspi->regmap, SPI_TCR, &spi_tcr);
 spi_tcnt = SPI_TCR_GET_TCNT(spi_tcr);

 msg->actual_length += spi_tcnt * dspi->bytes_per_word;

 trans_mode = dspi->devtype_data->trans_mode;
 if (trans_mode == DSPI_EOQ_MODE)
  dspi_eoq_read(dspi);
 else if (trans_mode == DSPI_TCFQ_MODE)
  dspi_tcfq_read(dspi);

 if (!dspi->len)

  return 0;

 if (trans_mode == DSPI_EOQ_MODE)
  dspi_eoq_write(dspi);
 else if (trans_mode == DSPI_TCFQ_MODE)
  dspi_tcfq_write(dspi);

 return -EINPROGRESS;
}
