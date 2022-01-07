
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fsl_dspi {scalar_t__ len; int regmap_pushr; int tx_cmd; } ;


 int PUSHR_CMD ;
 int SPI_PUSHR_CMD_CONT ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void cmd_fifo_write(struct fsl_dspi *dspi)
{
 u16 cmd = dspi->tx_cmd;

 if (dspi->len > 0)
  cmd |= SPI_PUSHR_CMD_CONT;
 regmap_write(dspi->regmap_pushr, PUSHR_CMD, cmd);
}
