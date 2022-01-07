
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_spi {TYPE_1__* master; } ;
struct TYPE_2__ {int dev; } ;


 int spi_controller_resume (TYPE_1__*) ;
 int spi_hw_init (int *,struct dw_spi*) ;

int dw_spi_resume_host(struct dw_spi *dws)
{
 spi_hw_init(&dws->master->dev, dws);
 return spi_controller_resume(dws->master);
}
