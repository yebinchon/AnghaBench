
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_hcd {int dummy; } ;
struct cvmx_usb_pipe {int dummy; } ;


 int CVMX_USB_TRANSFER_BULK ;
 int CVMX_USB_TRANSFER_CONTROL ;
 int CVMX_USB_TRANSFER_INTERRUPT ;
 int CVMX_USB_TRANSFER_ISOCHRONOUS ;
 struct cvmx_usb_pipe* cvmx_usb_find_ready_pipe (struct octeon_hcd*,int ) ;

__attribute__((used)) static struct cvmx_usb_pipe *cvmx_usb_next_pipe(struct octeon_hcd *usb,
      int is_sof)
{
 struct cvmx_usb_pipe *pipe;


 if (is_sof) {





  pipe = cvmx_usb_find_ready_pipe(usb,
      CVMX_USB_TRANSFER_ISOCHRONOUS);
  if (pipe)
   return pipe;
  pipe = cvmx_usb_find_ready_pipe(usb,
      CVMX_USB_TRANSFER_INTERRUPT);
  if (pipe)
   return pipe;
 }
 pipe = cvmx_usb_find_ready_pipe(usb, CVMX_USB_TRANSFER_CONTROL);
 if (pipe)
  return pipe;
 return cvmx_usb_find_ready_pipe(usb, CVMX_USB_TRANSFER_BULK);
}
