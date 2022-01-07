
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_imx_data {int spi_bus_clk; } ;


 int MSEC_PER_SEC ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static int spi_imx_calculate_timeout(struct spi_imx_data *spi_imx, int size)
{
 unsigned long timeout = 0;


 timeout = (8 + 4) * size / spi_imx->spi_bus_clk;


 timeout += 1;


 return msecs_to_jiffies(2 * timeout * MSEC_PER_SEC);
}
