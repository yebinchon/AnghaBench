
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; size_t transfer_buffer_length; size_t actual_length; void* transfer_buffer; int pipe; } ;


 void* PTR_ALIGN (void*,int ) ;
 int URB_ALIGNED_TEMP_BUFFER ;
 int dma_get_cache_alignment () ;
 int kfree (void*) ;
 int memcpy (void*,void*,size_t) ;
 scalar_t__ usb_pipeisoc (int ) ;
 scalar_t__ usb_urb_dir_in (struct urb*) ;

__attribute__((used)) static void dwc2_free_dma_aligned_buffer(struct urb *urb)
{
 void *stored_xfer_buffer;
 size_t length;

 if (!(urb->transfer_flags & URB_ALIGNED_TEMP_BUFFER))
  return;


 memcpy(&stored_xfer_buffer,
        PTR_ALIGN(urb->transfer_buffer + urb->transfer_buffer_length,
    dma_get_cache_alignment()),
        sizeof(urb->transfer_buffer));

 if (usb_urb_dir_in(urb)) {
  if (usb_pipeisoc(urb->pipe))
   length = urb->transfer_buffer_length;
  else
   length = urb->actual_length;

  memcpy(stored_xfer_buffer, urb->transfer_buffer, length);
 }
 kfree(urb->transfer_buffer);
 urb->transfer_buffer = stored_xfer_buffer;

 urb->transfer_flags &= ~URB_ALIGNED_TEMP_BUFFER;
}
