
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {TYPE_1__* master; } ;
struct TYPE_2__ {scalar_t__ busy; } ;


 int EBUSY ;

__attribute__((used)) static int zynqmp_qspi_setup(struct spi_device *qspi)
{
 if (qspi->master->busy)
  return -EBUSY;
 return 0;
}
