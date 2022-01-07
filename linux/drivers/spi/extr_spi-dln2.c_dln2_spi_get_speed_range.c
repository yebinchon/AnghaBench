
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dln2_spi {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DLN2_SPI_GET_MAX_FREQUENCY ;
 int DLN2_SPI_GET_MIN_FREQUENCY ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dln2_spi_get_speed (struct dln2_spi*,int ,int *) ;

__attribute__((used)) static int dln2_spi_get_speed_range(struct dln2_spi *dln2, u32 *fmin, u32 *fmax)
{
 int ret;

 ret = dln2_spi_get_speed(dln2, DLN2_SPI_GET_MIN_FREQUENCY, fmin);
 if (ret < 0)
  return ret;

 ret = dln2_spi_get_speed(dln2, DLN2_SPI_GET_MAX_FREQUENCY, fmax);
 if (ret < 0)
  return ret;

 dev_dbg(&dln2->pdev->dev, "freq_min = %d, freq_max = %d\n",
  *fmin, *fmax);

 return 0;
}
