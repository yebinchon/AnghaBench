
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct pnp_dev {int active; int number; int dev; TYPE_1__* card; } ;
struct TYPE_2__ {int number; } ;


 int IORESOURCE_DMA ;
 int IORESOURCE_IO ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ ISAPNP_CFG_DMA ;
 scalar_t__ ISAPNP_CFG_IRQ ;
 scalar_t__ ISAPNP_CFG_MEM ;
 scalar_t__ ISAPNP_CFG_PORT ;
 int ISAPNP_MAX_DMA ;
 int ISAPNP_MAX_IRQ ;
 int ISAPNP_MAX_MEM ;
 int ISAPNP_MAX_PORT ;
 int isapnp_activate (int ) ;
 int isapnp_cfg_begin (int ,int ) ;
 int isapnp_cfg_end () ;
 int isapnp_write_byte (scalar_t__,int) ;
 int isapnp_write_word (scalar_t__,int) ;
 int pnp_dbg (int *,char*,...) ;
 struct resource* pnp_get_resource (struct pnp_dev*,int ,int) ;
 scalar_t__ pnp_resource_enabled (struct resource*) ;

__attribute__((used)) static int isapnp_set_resources(struct pnp_dev *dev)
{
 struct resource *res;
 int tmp;

 pnp_dbg(&dev->dev, "set resources\n");
 isapnp_cfg_begin(dev->card->number, dev->number);
 dev->active = 1;
 for (tmp = 0; tmp < ISAPNP_MAX_PORT; tmp++) {
  res = pnp_get_resource(dev, IORESOURCE_IO, tmp);
  if (pnp_resource_enabled(res)) {
   pnp_dbg(&dev->dev, "  set io  %d to %#llx\n",
    tmp, (unsigned long long) res->start);
   isapnp_write_word(ISAPNP_CFG_PORT + (tmp << 1),
       res->start);
  }
 }
 for (tmp = 0; tmp < ISAPNP_MAX_IRQ; tmp++) {
  res = pnp_get_resource(dev, IORESOURCE_IRQ, tmp);
  if (pnp_resource_enabled(res)) {
   int irq = res->start;
   if (irq == 2)
    irq = 9;
   pnp_dbg(&dev->dev, "  set irq %d to %d\n", tmp, irq);
   isapnp_write_byte(ISAPNP_CFG_IRQ + (tmp << 1), irq);
  }
 }
 for (tmp = 0; tmp < ISAPNP_MAX_DMA; tmp++) {
  res = pnp_get_resource(dev, IORESOURCE_DMA, tmp);
  if (pnp_resource_enabled(res)) {
   pnp_dbg(&dev->dev, "  set dma %d to %lld\n",
    tmp, (unsigned long long) res->start);
   isapnp_write_byte(ISAPNP_CFG_DMA + tmp, res->start);
  }
 }
 for (tmp = 0; tmp < ISAPNP_MAX_MEM; tmp++) {
  res = pnp_get_resource(dev, IORESOURCE_MEM, tmp);
  if (pnp_resource_enabled(res)) {
   pnp_dbg(&dev->dev, "  set mem %d to %#llx\n",
    tmp, (unsigned long long) res->start);
   isapnp_write_word(ISAPNP_CFG_MEM + (tmp << 3),
       (res->start >> 8) & 0xffff);
  }
 }

 isapnp_activate(dev->number);
 isapnp_cfg_end();
 return 0;
}
