
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vaddr ;
struct usb_bus {int dummy; } ;
typedef int gfp_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int EFAULT ;
 int ENOMEM ;
 int WARN_ON_ONCE (int) ;
 unsigned char* hcd_buffer_alloc (struct usb_bus*,size_t,int ,int *) ;
 int memcpy (unsigned char*,void*,size_t) ;
 int put_unaligned (unsigned long,unsigned long*) ;

__attribute__((used)) static int hcd_alloc_coherent(struct usb_bus *bus,
         gfp_t mem_flags, dma_addr_t *dma_handle,
         void **vaddr_handle, size_t size,
         enum dma_data_direction dir)
{
 unsigned char *vaddr;

 if (*vaddr_handle == ((void*)0)) {
  WARN_ON_ONCE(1);
  return -EFAULT;
 }

 vaddr = hcd_buffer_alloc(bus, size + sizeof(vaddr),
     mem_flags, dma_handle);
 if (!vaddr)
  return -ENOMEM;
 put_unaligned((unsigned long)*vaddr_handle,
        (unsigned long *)(vaddr + size));

 if (dir == DMA_TO_DEVICE)
  memcpy(vaddr, *vaddr_handle, size);

 *vaddr_handle = vaddr;
 return 0;
}
