
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {void* active; int number; TYPE_1__* card; int dev; } ;
struct TYPE_2__ {int number; } ;


 int IORESOURCE_DISABLED ;
 scalar_t__ ISAPNP_CFG_ACTIVATE ;
 scalar_t__ ISAPNP_CFG_DMA ;
 scalar_t__ ISAPNP_CFG_IRQ ;
 scalar_t__ ISAPNP_CFG_MEM ;
 scalar_t__ ISAPNP_CFG_PORT ;
 int ISAPNP_MAX_DMA ;
 int ISAPNP_MAX_IRQ ;
 int ISAPNP_MAX_MEM ;
 int ISAPNP_MAX_PORT ;
 int isapnp_cfg_begin (int ,int ) ;
 int isapnp_cfg_end () ;
 void* isapnp_read_byte (scalar_t__) ;
 int isapnp_read_word (scalar_t__) ;
 int pnp_add_dma_resource (struct pnp_dev*,int,int ) ;
 int pnp_add_io_resource (struct pnp_dev*,int,int,int ) ;
 int pnp_add_irq_resource (struct pnp_dev*,int,int ) ;
 int pnp_add_mem_resource (struct pnp_dev*,int,int,int ) ;
 int pnp_dbg (int *,char*) ;
 int pnp_init_resources (struct pnp_dev*) ;

__attribute__((used)) static int isapnp_get_resources(struct pnp_dev *dev)
{
 int i, ret;

 pnp_dbg(&dev->dev, "get resources\n");
 pnp_init_resources(dev);
 isapnp_cfg_begin(dev->card->number, dev->number);
 dev->active = isapnp_read_byte(ISAPNP_CFG_ACTIVATE);
 if (!dev->active)
  goto __end;

 for (i = 0; i < ISAPNP_MAX_PORT; i++) {
  ret = isapnp_read_word(ISAPNP_CFG_PORT + (i << 1));
  pnp_add_io_resource(dev, ret, ret,
        ret == 0 ? IORESOURCE_DISABLED : 0);
 }
 for (i = 0; i < ISAPNP_MAX_MEM; i++) {
  ret = isapnp_read_word(ISAPNP_CFG_MEM + (i << 3)) << 8;
  pnp_add_mem_resource(dev, ret, ret,
         ret == 0 ? IORESOURCE_DISABLED : 0);
 }
 for (i = 0; i < ISAPNP_MAX_IRQ; i++) {
  ret = isapnp_read_word(ISAPNP_CFG_IRQ + (i << 1)) >> 8;
  pnp_add_irq_resource(dev, ret,
         ret == 0 ? IORESOURCE_DISABLED : 0);
 }
 for (i = 0; i < ISAPNP_MAX_DMA; i++) {
  ret = isapnp_read_byte(ISAPNP_CFG_DMA + i);
  pnp_add_dma_resource(dev, ret,
         ret == 4 ? IORESOURCE_DISABLED : 0);
 }

__end:
 isapnp_cfg_end();
 return 0;
}
