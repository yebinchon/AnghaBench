
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdw_cdns_dma_data {int nr_ports; TYPE_2__** port; } ;
struct TYPE_4__ {int assigned; TYPE_1__* pdi; } ;
struct TYPE_3__ {int assigned; } ;



__attribute__((used)) static void intel_port_cleanup(struct sdw_cdns_dma_data *dma)
{
 int i;

 for (i = 0; i < dma->nr_ports; i++) {
  if (dma->port[i]) {
   dma->port[i]->pdi->assigned = 0;
   dma->port[i]->pdi = ((void*)0);
   dma->port[i]->assigned = 0;
   dma->port[i] = ((void*)0);
  }
 }
}
