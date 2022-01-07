
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {struct spi_device* spi; } ;
struct spi_device {int mode; int max_speed_hz; } ;
struct spi_controller {int dummy; } ;
struct rspi_data {int sppcr; int spcmd; int max_speed_hz; } ;


 int RSPI_SPCR ;
 int SPCMD_CPHA ;
 int SPCMD_CPOL ;
 int SPCMD_SSLKP ;
 int SPCR_SPE ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LOOP ;
 int SPI_RX_DUAL ;
 int SPI_RX_QUAD ;
 int SPI_TX_DUAL ;
 int SPI_TX_QUAD ;
 int SPPCR_SPLP ;
 int qspi_setup_sequencer (struct rspi_data*,struct spi_message*) ;
 int rspi_read8 (struct rspi_data*,int ) ;
 int rspi_write8 (struct rspi_data*,int,int ) ;
 int set_config_register (struct rspi_data*,int) ;
 struct rspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int rspi_prepare_message(struct spi_controller *ctlr,
    struct spi_message *msg)
{
 struct rspi_data *rspi = spi_controller_get_devdata(ctlr);
 struct spi_device *spi = msg->spi;
 int ret;

 rspi->max_speed_hz = spi->max_speed_hz;

 rspi->spcmd = SPCMD_SSLKP;
 if (spi->mode & SPI_CPOL)
  rspi->spcmd |= SPCMD_CPOL;
 if (spi->mode & SPI_CPHA)
  rspi->spcmd |= SPCMD_CPHA;


 rspi->sppcr = 0;
 if (spi->mode & SPI_LOOP)
  rspi->sppcr |= SPPCR_SPLP;

 set_config_register(rspi, 8);

 if (msg->spi->mode &
     (SPI_TX_DUAL | SPI_TX_QUAD | SPI_RX_DUAL | SPI_RX_QUAD)) {

  ret = qspi_setup_sequencer(rspi, msg);
  if (ret < 0)
   return ret;
 }


 rspi_write8(rspi, rspi_read8(rspi, RSPI_SPCR) | SPCR_SPE, RSPI_SPCR);
 return 0;
}
