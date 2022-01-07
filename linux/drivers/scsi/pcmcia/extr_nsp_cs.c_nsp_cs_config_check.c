
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ config_index; TYPE_2__** resource; int card_addr; } ;
struct TYPE_5__ {unsigned long MmioAddress; scalar_t__ MmioLength; } ;
typedef TYPE_1__ nsp_hw_data ;
struct TYPE_6__ {int flags; int end; int start; } ;


 int ENODEV ;
 int NSP_DEBUG_INIT ;
 int WIN_DATA_WIDTH_16 ;
 int WIN_ENABLE ;
 int WIN_MEMORY_TYPE_CM ;
 scalar_t__ ioremap_nocache (int ,scalar_t__) ;
 int nsp_dbg (int ,char*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 scalar_t__ pcmcia_map_mem_page (struct pcmcia_device*,TYPE_2__*,int ) ;
 scalar_t__ pcmcia_request_io (struct pcmcia_device*) ;
 scalar_t__ pcmcia_request_window (struct pcmcia_device*,TYPE_2__*,int ) ;
 scalar_t__ resource_size (TYPE_2__*) ;

__attribute__((used)) static int nsp_cs_config_check(struct pcmcia_device *p_dev, void *priv_data)
{
 nsp_hw_data *data = priv_data;

 if (p_dev->config_index == 0)
  return -ENODEV;


 if (pcmcia_request_io(p_dev) != 0)
  goto next_entry;

 if (resource_size(p_dev->resource[2])) {
  p_dev->resource[2]->flags |= (WIN_DATA_WIDTH_16 |
     WIN_MEMORY_TYPE_CM |
     WIN_ENABLE);
  if (p_dev->resource[2]->end < 0x1000)
   p_dev->resource[2]->end = 0x1000;
  if (pcmcia_request_window(p_dev, p_dev->resource[2], 0) != 0)
   goto next_entry;
  if (pcmcia_map_mem_page(p_dev, p_dev->resource[2],
      p_dev->card_addr) != 0)
   goto next_entry;

  data->MmioAddress = (unsigned long)
   ioremap_nocache(p_dev->resource[2]->start,
     resource_size(p_dev->resource[2]));
  data->MmioLength = resource_size(p_dev->resource[2]);
 }

 return 0;

next_entry:
 nsp_dbg(NSP_DEBUG_INIT, "next");
 pcmcia_disable_device(p_dev);
 return -ENODEV;
}
