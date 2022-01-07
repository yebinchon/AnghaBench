
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fsl_dspi {int regmap_pushr; } ;


 int PUSHR_TX ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void tx_fifo_write(struct fsl_dspi *dspi, u16 txdata)
{
 regmap_write(dspi->regmap_pushr, PUSHR_TX, txdata);
}
