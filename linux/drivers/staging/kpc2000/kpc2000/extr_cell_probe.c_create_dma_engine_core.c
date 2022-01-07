
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {size_t start; int end; int flags; } ;
struct mfd_cell {int id; int num_resources; struct resource* resources; int name; scalar_t__ pdata_size; int * platform_data; } ;
struct kp2000_device {int card_num; int dma_base_resource; } ;
typedef int resources ;


 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int KPC_DMA_ENGINE_SIZE ;
 int KP_DRIVER_NAME_DMA_CONTROLLER ;
 int PCARD_TO_DEV (struct kp2000_device*) ;
 int memset (struct resource**,int ,int) ;
 int mfd_add_devices (int ,int,struct mfd_cell*,int,int *,int ,int *) ;

__attribute__((used)) static int create_dma_engine_core(struct kp2000_device *pcard, size_t engine_regs_offset, int engine_num, int irq_num)
{
 struct mfd_cell cell = { .id = engine_num };
 struct resource resources[2];

 cell.platform_data = ((void*)0);
 cell.pdata_size = 0;
 cell.name = KP_DRIVER_NAME_DMA_CONTROLLER;
 cell.num_resources = 2;

 memset(&resources, 0, sizeof(resources));

 resources[0].start = engine_regs_offset;
 resources[0].end = engine_regs_offset + (KPC_DMA_ENGINE_SIZE - 1);
 resources[0].flags = IORESOURCE_MEM;

 resources[1].start = irq_num;
 resources[1].end = irq_num;
 resources[1].flags = IORESOURCE_IRQ;

 cell.resources = resources;

 return mfd_add_devices(PCARD_TO_DEV(pcard),
          pcard->card_num * 100,
          &cell,
          1,
          &pcard->dma_base_resource,
          0,
          ((void*)0));
}
