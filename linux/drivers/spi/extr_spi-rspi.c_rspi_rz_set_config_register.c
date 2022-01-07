
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rspi_data {int sppcr; unsigned long max_speed_hz; int spcmd; int byte_access; int clk; } ;


 int DIV_ROUND_UP (unsigned long,int) ;
 int RSPI_SPBR ;
 int RSPI_SPCKD ;
 int RSPI_SPCMD0 ;
 int RSPI_SPCR ;
 int RSPI_SPDCR ;
 int RSPI_SPND ;
 int RSPI_SPPCR ;
 int RSPI_SPSCR ;
 int RSPI_SSLND ;
 int SPCMD_SPB_8_TO_16 (int) ;
 int SPCR_MSTR ;
 int SPDCR_SPLBYTE ;
 int clamp (int,int ,int) ;
 unsigned long clk_get_rate (int ) ;
 int rspi_write16 (struct rspi_data*,int,int ) ;
 int rspi_write8 (struct rspi_data*,int,int ) ;

__attribute__((used)) static int rspi_rz_set_config_register(struct rspi_data *rspi, int access_size)
{
 int spbr;
 int div = 0;
 unsigned long clksrc;


 rspi_write8(rspi, rspi->sppcr, RSPI_SPPCR);

 clksrc = clk_get_rate(rspi->clk);
 while (div < 3) {
  if (rspi->max_speed_hz >= clksrc/4)
   break;
  div++;
  clksrc /= 2;
 }


 spbr = DIV_ROUND_UP(clksrc, 2 * rspi->max_speed_hz) - 1;
 rspi_write8(rspi, clamp(spbr, 0, 255), RSPI_SPBR);
 rspi->spcmd |= div << 2;


 rspi_write8(rspi, SPDCR_SPLBYTE, RSPI_SPDCR);
 rspi->byte_access = 1;


 rspi_write8(rspi, 0x00, RSPI_SPCKD);
 rspi_write8(rspi, 0x00, RSPI_SSLND);
 rspi_write8(rspi, 0x00, RSPI_SPND);


 rspi_write8(rspi, 0, RSPI_SPSCR);
 rspi->spcmd |= SPCMD_SPB_8_TO_16(access_size);
 rspi_write16(rspi, rspi->spcmd, RSPI_SPCMD0);


 rspi_write8(rspi, SPCR_MSTR, RSPI_SPCR);

 return 0;
}
