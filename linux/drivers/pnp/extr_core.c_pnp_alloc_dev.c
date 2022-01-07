
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_protocol {int number; int dev; } ;
struct pnp_id {int dummy; } ;
struct TYPE_2__ {int * release; int coherent_dma_mask; int * dma_mask; int * bus; int * parent; } ;
struct pnp_dev {int number; struct pnp_protocol* protocol; TYPE_1__ dev; int dma_mask; int options; int resources; } ;


 int DMA_BIT_MASK (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_name (TYPE_1__*,char*,int ,int) ;
 int kfree (struct pnp_dev*) ;
 struct pnp_dev* kzalloc (int,int ) ;
 struct pnp_id* pnp_add_id (struct pnp_dev*,char const*) ;
 int pnp_bus_type ;
 int pnp_release_device ;

struct pnp_dev *pnp_alloc_dev(struct pnp_protocol *protocol, int id,
         const char *pnpid)
{
 struct pnp_dev *dev;
 struct pnp_id *dev_id;

 dev = kzalloc(sizeof(struct pnp_dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 INIT_LIST_HEAD(&dev->resources);
 INIT_LIST_HEAD(&dev->options);
 dev->protocol = protocol;
 dev->number = id;
 dev->dma_mask = DMA_BIT_MASK(24);

 dev->dev.parent = &dev->protocol->dev;
 dev->dev.bus = &pnp_bus_type;
 dev->dev.dma_mask = &dev->dma_mask;
 dev->dev.coherent_dma_mask = dev->dma_mask;
 dev->dev.release = &pnp_release_device;

 dev_set_name(&dev->dev, "%02x:%02x", dev->protocol->number, dev->number);

 dev_id = pnp_add_id(dev, pnpid);
 if (!dev_id) {
  kfree(dev);
  return ((void*)0);
 }

 return dev;
}
