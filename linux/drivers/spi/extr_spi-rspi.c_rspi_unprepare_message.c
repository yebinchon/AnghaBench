
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_controller {int dummy; } ;
struct rspi_data {int spcmd; } ;


 int RSPI_SPCMD0 ;
 int RSPI_SPCR ;
 int RSPI_SPSCR ;
 int SPCR_SPE ;
 int rspi_read8 (struct rspi_data*,int ) ;
 int rspi_write16 (struct rspi_data*,int ,int ) ;
 int rspi_write8 (struct rspi_data*,int,int ) ;
 struct rspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int rspi_unprepare_message(struct spi_controller *ctlr,
      struct spi_message *msg)
{
 struct rspi_data *rspi = spi_controller_get_devdata(ctlr);


 rspi_write8(rspi, rspi_read8(rspi, RSPI_SPCR) & ~SPCR_SPE, RSPI_SPCR);


 rspi_write16(rspi, rspi->spcmd, RSPI_SPCMD0);
 rspi_write8(rspi, 0, RSPI_SPSCR);
 return 0;
}
