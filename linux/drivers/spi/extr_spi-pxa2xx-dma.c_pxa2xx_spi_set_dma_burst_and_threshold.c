
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct spi_device {int controller; struct pxa2xx_spi_chip* controller_data; } ;
struct pxa2xx_spi_chip {int dma_burst_size; } ;
struct driver_data {TYPE_1__* controller_info; } ;
struct chip_data {int dummy; } ;
struct TYPE_2__ {int dma_burst_size; } ;


 int RX_THRESH_DFLT ;
 int SSCR1_RxTresh (int ) ;
 int SSCR1_TxTresh (int ) ;
 int TX_THRESH_DFLT ;
 struct driver_data* spi_controller_get_devdata (int ) ;

int pxa2xx_spi_set_dma_burst_and_threshold(struct chip_data *chip,
        struct spi_device *spi,
        u8 bits_per_word, u32 *burst_code,
        u32 *threshold)
{
 struct pxa2xx_spi_chip *chip_info = spi->controller_data;
 struct driver_data *drv_data = spi_controller_get_devdata(spi->controller);
 u32 dma_burst_size = drv_data->controller_info->dma_burst_size;






 *burst_code = chip_info ? chip_info->dma_burst_size : dma_burst_size;
 *threshold = SSCR1_RxTresh(RX_THRESH_DFLT)
     | SSCR1_TxTresh(TX_THRESH_DFLT);

 return 0;
}
