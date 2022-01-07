
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int bus; } ;
typedef int dma_addr_t ;


 int hcd_buffer_free (int ,size_t,void*,int ) ;

void usb_free_coherent(struct usb_device *dev, size_t size, void *addr,
         dma_addr_t dma)
{
 if (!dev || !dev->bus)
  return;
 if (!addr)
  return;
 hcd_buffer_free(dev->bus, size, addr, dma);
}
