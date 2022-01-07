
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prtspd; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct octeon_hcd {TYPE_2__ usbcx_hprt; } ;
struct cvmx_usb_pipe {scalar_t__ device_speed; } ;


 scalar_t__ CVMX_USB_SPEED_HIGH ;

__attribute__((used)) static inline int cvmx_usb_pipe_needs_split(struct octeon_hcd *usb,
         struct cvmx_usb_pipe *pipe)
{
 return pipe->device_speed != CVMX_USB_SPEED_HIGH &&
        usb->usbcx_hprt.s.prtspd == CVMX_USB_SPEED_HIGH;
}
