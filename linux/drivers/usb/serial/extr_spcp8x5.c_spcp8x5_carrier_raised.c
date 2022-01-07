
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;


 int MSR_STATUS_LINE_DCD ;
 int spcp8x5_get_msr (struct usb_serial_port*,int*) ;

__attribute__((used)) static int spcp8x5_carrier_raised(struct usb_serial_port *port)
{
 u8 msr;
 int ret;

 ret = spcp8x5_get_msr(port, &msr);
 if (ret || msr & MSR_STATUS_LINE_DCD)
  return 1;

 return 0;
}
