
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int dummy; } ;
struct usb_device {int dev; } ;
 int EINVAL ;
 int ENODEV ;
 int ETIME ;
 int dev_warn (int *,char*) ;
 int trace_xhci_dbg_context_change ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*) ;
 int xhci_err (struct xhci_hcd*,char*,int) ;
 int xhci_warn (struct xhci_hcd*,char*) ;

__attribute__((used)) static int xhci_evaluate_context_result(struct xhci_hcd *xhci,
  struct usb_device *udev, u32 *cmd_status)
{
 int ret;

 switch (*cmd_status) {
 case 135:
 case 134:
  xhci_warn(xhci, "Timeout while waiting for evaluate context command\n");
  ret = -ETIME;
  break;
 case 130:
  dev_warn(&udev->dev,
    "WARN: xHCI driver setup invalid evaluate context command.\n");
  ret = -EINVAL;
  break;
 case 129:
  dev_warn(&udev->dev,
   "WARN: slot not enabled for evaluate context command.\n");
  ret = -EINVAL;
  break;
 case 133:
  dev_warn(&udev->dev,
   "WARN: invalid context state for evaluate context command.\n");
  ret = -EINVAL;
  break;
 case 132:
  dev_warn(&udev->dev,
   "ERROR: Incompatible device for evaluate context command.\n");
  ret = -ENODEV;
  break;
 case 131:

  dev_warn(&udev->dev, "WARN: Max Exit Latency too large\n");
  ret = -EINVAL;
  break;
 case 128:
  xhci_dbg_trace(xhci, trace_xhci_dbg_context_change,
    "Successful evaluate context command");
  ret = 0;
  break;
 default:
  xhci_err(xhci, "ERROR: unexpected command completion code 0x%x.\n",
   *cmd_status);
  ret = -EINVAL;
  break;
 }
 return ret;
}
