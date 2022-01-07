
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_mem_dirmap_desc {int nodirmap; TYPE_2__* mem; } ;
struct spi_controller {TYPE_3__* mem_ops; } ;
struct TYPE_6__ {int (* dirmap_destroy ) (struct spi_mem_dirmap_desc*) ;} ;
struct TYPE_5__ {TYPE_1__* spi; } ;
struct TYPE_4__ {struct spi_controller* controller; } ;


 int kfree (struct spi_mem_dirmap_desc*) ;
 int stub1 (struct spi_mem_dirmap_desc*) ;

void spi_mem_dirmap_destroy(struct spi_mem_dirmap_desc *desc)
{
 struct spi_controller *ctlr = desc->mem->spi->controller;

 if (!desc->nodirmap && ctlr->mem_ops && ctlr->mem_ops->dirmap_destroy)
  ctlr->mem_ops->dirmap_destroy(desc);

 kfree(desc);
}
