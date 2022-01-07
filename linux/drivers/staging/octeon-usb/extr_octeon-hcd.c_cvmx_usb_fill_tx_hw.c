
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct octeon_hcd {int index; } ;
struct cvmx_usb_tx_fifo {int head; int tail; TYPE_1__* entry; } ;
struct TYPE_2__ {int address; int size; int channel; } ;


 int CVMX_USBNX_DMA0_INB_CHN0 (int ) ;
 int MAX_CHANNELS ;
 int USB_FIFO_ADDRESS (int ,int ) ;
 int * cvmx_phys_to_ptr (int) ;
 int cvmx_read64_uint64 (int ) ;
 int cvmx_write64_uint32 (int,int ) ;

__attribute__((used)) static int cvmx_usb_fill_tx_hw(struct octeon_hcd *usb,
          struct cvmx_usb_tx_fifo *fifo, int available)
{




 while (available && (fifo->head != fifo->tail)) {
  int i = fifo->tail;
  const u32 *ptr = cvmx_phys_to_ptr(fifo->entry[i].address);
  u64 csr_address = USB_FIFO_ADDRESS(fifo->entry[i].channel,
         usb->index) ^ 4;
  int words = available;


  if (fifo->entry[i].size <= available) {
   words = fifo->entry[i].size;
   fifo->tail++;
   if (fifo->tail > MAX_CHANNELS)
    fifo->tail = 0;
  }


  available -= words;
  fifo->entry[i].address += words * 4;
  fifo->entry[i].size -= words;





  while (words > 3) {
   cvmx_write64_uint32(csr_address, *ptr++);
   cvmx_write64_uint32(csr_address, *ptr++);
   cvmx_write64_uint32(csr_address, *ptr++);
   cvmx_read64_uint64(
     CVMX_USBNX_DMA0_INB_CHN0(usb->index));
   words -= 3;
  }
  cvmx_write64_uint32(csr_address, *ptr++);
  if (--words) {
   cvmx_write64_uint32(csr_address, *ptr++);
   if (--words)
    cvmx_write64_uint32(csr_address, *ptr++);
  }
  cvmx_read64_uint64(CVMX_USBNX_DMA0_INB_CHN0(usb->index));
 }
 return fifo->head != fifo->tail;
}
