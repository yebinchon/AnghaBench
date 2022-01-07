
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; int regs; } ;


 int HC_PORTSC1 ;
 int PORT_CONNECT ;
 int PORT_OWNER ;
 int PORT_PE ;
 int PORT_RWC_BITS ;
 int dev_info (int ,char*,int) ;
 int reg_write32 (int ,int ,int) ;

__attribute__((used)) static int check_reset_complete(struct usb_hcd *hcd, int index,
  int port_status)
{
 if (!(port_status & PORT_CONNECT))
  return port_status;


 if (!(port_status & PORT_PE)) {

  dev_info(hcd->self.controller,
     "port %d full speed --> companion\n",
     index + 1);

  port_status |= PORT_OWNER;
  port_status &= ~PORT_RWC_BITS;
  reg_write32(hcd->regs, HC_PORTSC1, port_status);

 } else
  dev_info(hcd->self.controller, "port %d high speed\n",
        index + 1);

 return port_status;
}
