
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int por; int hclk_rst; scalar_t__ hrst; scalar_t__ prst; } ;
union cvmx_usbnx_clk_ctl {int u64; TYPE_1__ s; } ;
struct octeon_hcd {int index; int * active_pipes; int idle_pipes; } ;


 int CVMX_USBNX_CLK_CTL (int ) ;
 size_t CVMX_USB_TRANSFER_BULK ;
 size_t CVMX_USB_TRANSFER_CONTROL ;
 size_t CVMX_USB_TRANSFER_INTERRUPT ;
 size_t CVMX_USB_TRANSFER_ISOCHRONOUS ;
 int EBUSY ;
 int cvmx_read64_uint64 (int ) ;
 int cvmx_write64_uint64 (int ,int ) ;
 int list_empty (int *) ;

__attribute__((used)) static int cvmx_usb_shutdown(struct octeon_hcd *usb)
{
 union cvmx_usbnx_clk_ctl usbn_clk_ctl;


 if (!list_empty(&usb->idle_pipes) ||
     !list_empty(&usb->active_pipes[CVMX_USB_TRANSFER_ISOCHRONOUS]) ||
     !list_empty(&usb->active_pipes[CVMX_USB_TRANSFER_INTERRUPT]) ||
     !list_empty(&usb->active_pipes[CVMX_USB_TRANSFER_CONTROL]) ||
     !list_empty(&usb->active_pipes[CVMX_USB_TRANSFER_BULK]))
  return -EBUSY;


 usbn_clk_ctl.u64 = cvmx_read64_uint64(CVMX_USBNX_CLK_CTL(usb->index));
 usbn_clk_ctl.s.enable = 1;
 usbn_clk_ctl.s.por = 1;
 usbn_clk_ctl.s.hclk_rst = 1;
 usbn_clk_ctl.s.prst = 0;
 usbn_clk_ctl.s.hrst = 0;
 cvmx_write64_uint64(CVMX_USBNX_CLK_CTL(usb->index), usbn_clk_ctl.u64);
 return 0;
}
