
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rspi_data {int sppcr; int max_speed_hz; int byte_access; int spcmd; int clk; } ;


 int DIV_ROUND_UP (int ,int) ;
 int QSPI_SPBFCR ;
 int QSPI_SPBMUL0 ;
 int RSPI_SPBR ;
 int RSPI_SPCKD ;
 int RSPI_SPCMD0 ;
 int RSPI_SPCR ;
 int RSPI_SPDCR ;
 int RSPI_SPND ;
 int RSPI_SPPCR ;
 int RSPI_SPSCR ;
 int RSPI_SSLND ;
 int SPBFCR_RXRST ;
 int SPBFCR_TXRST ;
 int SPCMD_SCKDEN ;
 int SPCMD_SLNDEN ;
 int SPCMD_SPB_16BIT ;
 int SPCMD_SPB_32BIT ;
 int SPCMD_SPB_8BIT ;
 int SPCMD_SPNDEN ;
 int SPCR_MSTR ;
 int clamp (int,int ,int) ;
 int clk_get_rate (int ) ;
 int rspi_write16 (struct rspi_data*,int,int ) ;
 int rspi_write32 (struct rspi_data*,int ,int ) ;
 int rspi_write8 (struct rspi_data*,int,int ) ;

__attribute__((used)) static int qspi_set_config_register(struct rspi_data *rspi, int access_size)
{
 int spbr;


 rspi_write8(rspi, rspi->sppcr, RSPI_SPPCR);


 spbr = DIV_ROUND_UP(clk_get_rate(rspi->clk), 2 * rspi->max_speed_hz);
 rspi_write8(rspi, clamp(spbr, 0, 255), RSPI_SPBR);


 rspi_write8(rspi, 0, RSPI_SPDCR);
 rspi->byte_access = 1;


 rspi_write8(rspi, 0x00, RSPI_SPCKD);
 rspi_write8(rspi, 0x00, RSPI_SSLND);
 rspi_write8(rspi, 0x00, RSPI_SPND);


 if (access_size == 8)
  rspi->spcmd |= SPCMD_SPB_8BIT;
 else if (access_size == 16)
  rspi->spcmd |= SPCMD_SPB_16BIT;
 else
  rspi->spcmd |= SPCMD_SPB_32BIT;

 rspi->spcmd |= SPCMD_SCKDEN | SPCMD_SLNDEN | SPCMD_SPNDEN;


 rspi_write32(rspi, 0, QSPI_SPBMUL0);


 rspi_write8(rspi, SPBFCR_TXRST | SPBFCR_RXRST, QSPI_SPBFCR);

 rspi_write8(rspi, 0x00, QSPI_SPBFCR);


 rspi_write8(rspi, 0, RSPI_SPSCR);
 rspi_write16(rspi, rspi->spcmd, RSPI_SPCMD0);


 rspi_write8(rspi, SPCR_MSTR, RSPI_SPCR);

 return 0;
}
