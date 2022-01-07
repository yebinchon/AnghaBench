
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prtconnsts; int prtspd; int prtpwr; int prtovrcurract; int prtena; } ;
union cvmx_usbcx_hprt {TYPE_1__ s; int u32; } ;
struct TYPE_4__ {scalar_t__ connected; } ;
struct octeon_hcd {TYPE_2__ port_status; int index; } ;
struct cvmx_usb_port_status {scalar_t__ connected; int connect_change; int port_speed; int port_powered; int port_over_current; int port_enabled; } ;
typedef int result ;


 int CVMX_USBCX_HPRT (int ) ;
 int cvmx_usb_read_csr32 (struct octeon_hcd*,int ) ;
 int memset (struct cvmx_usb_port_status*,int ,int) ;

__attribute__((used)) static struct cvmx_usb_port_status cvmx_usb_get_status(struct octeon_hcd *usb)
{
 union cvmx_usbcx_hprt usbc_hprt;
 struct cvmx_usb_port_status result;

 memset(&result, 0, sizeof(result));

 usbc_hprt.u32 = cvmx_usb_read_csr32(usb, CVMX_USBCX_HPRT(usb->index));
 result.port_enabled = usbc_hprt.s.prtena;
 result.port_over_current = usbc_hprt.s.prtovrcurract;
 result.port_powered = usbc_hprt.s.prtpwr;
 result.port_speed = usbc_hprt.s.prtspd;
 result.connected = usbc_hprt.s.prtconnsts;
 result.connect_change =
  result.connected != usb->port_status.connected;

 return result;
}
