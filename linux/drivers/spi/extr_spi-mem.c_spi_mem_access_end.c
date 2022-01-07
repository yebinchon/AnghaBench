
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_mem {TYPE_1__* spi; } ;
struct TYPE_4__ {int parent; } ;
struct spi_controller {TYPE_2__ dev; scalar_t__ auto_runtime_pm; int bus_lock_mutex; int io_mutex; } ;
struct TYPE_3__ {struct spi_controller* controller; } ;


 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void spi_mem_access_end(struct spi_mem *mem)
{
 struct spi_controller *ctlr = mem->spi->controller;

 mutex_unlock(&ctlr->io_mutex);
 mutex_unlock(&ctlr->bus_lock_mutex);

 if (ctlr->auto_runtime_pm)
  pm_runtime_put(ctlr->dev.parent);
}
