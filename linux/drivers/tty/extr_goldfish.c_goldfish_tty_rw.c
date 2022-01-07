
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goldfish_tty {scalar_t__ version; int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef unsigned long dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 int dev_err (int ,char*) ;
 unsigned long dma_map_single (int ,void*,unsigned long,int) ;
 scalar_t__ dma_mapping_error (int ,unsigned long) ;
 int dma_unmap_single (int ,unsigned long,unsigned long,int) ;
 int do_rw_io (struct goldfish_tty*,unsigned long,unsigned int,int) ;

__attribute__((used)) static void goldfish_tty_rw(struct goldfish_tty *qtty,
       unsigned long addr,
       unsigned int count,
       int is_write)
{
 dma_addr_t dma_handle;
 enum dma_data_direction dma_dir;

 dma_dir = (is_write ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
 if (qtty->version > 0) {




  unsigned long addr_end = addr + count;

  while (addr < addr_end) {
   unsigned long pg_end = (addr & PAGE_MASK) + PAGE_SIZE;
   unsigned long next =
     pg_end < addr_end ? pg_end : addr_end;
   unsigned long avail = next - addr;





   dma_handle = dma_map_single(qtty->dev, (void *)addr,
          avail, dma_dir);

   if (dma_mapping_error(qtty->dev, dma_handle)) {
    dev_err(qtty->dev, "tty: DMA mapping error.\n");
    return;
   }
   do_rw_io(qtty, dma_handle, avail, is_write);





   dma_unmap_single(qtty->dev, dma_handle, avail, dma_dir);

   addr += avail;
  }
 } else {




  do_rw_io(qtty, addr, count, is_write);
 }
}
