
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spi_device {TYPE_1__* controller; } ;
struct TYPE_2__ {int (* set_cs_timing ) (struct spi_device*,int ,int ,int ) ;} ;


 int stub1 (struct spi_device*,int ,int ,int ) ;

void spi_set_cs_timing(struct spi_device *spi, u8 setup, u8 hold,
         u8 inactive_dly)
{
 if (spi->controller->set_cs_timing)
  spi->controller->set_cs_timing(spi, setup, hold, inactive_dly);
}
