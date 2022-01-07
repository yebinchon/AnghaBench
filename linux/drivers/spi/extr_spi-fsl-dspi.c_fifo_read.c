
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_dspi {int regmap; } ;


 int SPI_POPR ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static u32 fifo_read(struct fsl_dspi *dspi)
{
 u32 rxdata = 0;

 regmap_read(dspi->regmap, SPI_POPR, &rxdata);
 return rxdata;
}
