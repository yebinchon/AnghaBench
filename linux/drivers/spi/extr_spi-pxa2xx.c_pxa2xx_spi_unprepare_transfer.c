
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct driver_data {int dummy; } ;


 int SSCR0 ;
 int SSCR0_SSE ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int) ;
 struct driver_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int pxa2xx_spi_unprepare_transfer(struct spi_controller *controller)
{
 struct driver_data *drv_data = spi_controller_get_devdata(controller);


 pxa2xx_spi_write(drv_data, SSCR0,
    pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);

 return 0;
}
