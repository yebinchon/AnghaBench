
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ txfflsh; scalar_t__ rxfflsh; } ;
union cvmx_usbcx_grstctl {TYPE_1__ s; int u32; } ;
typedef int u64 ;
struct octeon_hcd {int index; } ;


 int CVMX_USBCX_GRSTCTL (int ) ;
 int __delay (int) ;
 int cvmx_get_cycle () ;
 int cvmx_usb_read_csr32 (struct octeon_hcd*,int) ;
 scalar_t__ octeon_get_clock_rate ;

__attribute__((used)) static int cvmx_wait_tx_rx(struct octeon_hcd *usb, int fflsh_type)
{
 int result;
 u64 address = CVMX_USBCX_GRSTCTL(usb->index);
 u64 done = cvmx_get_cycle() + 100 *
     (u64)octeon_get_clock_rate / 1000000;
 union cvmx_usbcx_grstctl c;

 while (1) {
  c.u32 = cvmx_usb_read_csr32(usb, address);
  if (fflsh_type == 0 && c.s.txfflsh == 0) {
   result = 0;
   break;
  } else if (fflsh_type == 1 && c.s.rxfflsh == 0) {
   result = 0;
   break;
  } else if (cvmx_get_cycle() > done) {
   result = -1;
   break;
  }

  __delay(100);
 }
 return result;
}
