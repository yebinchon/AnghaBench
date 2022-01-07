
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequestType; int bRequest; int wLength; int wIndex; int wValue; } ;
 int USB_TYPE_CLASS ;
 int USB_TYPE_MASK ;
 int USB_TYPE_RESERVED ;
 int USB_TYPE_STANDARD ;
 int USB_TYPE_VENDOR ;
 int pr_debug (char*,...) ;
 int usbip_dump_request_type (int) ;

__attribute__((used)) static void usbip_dump_usb_ctrlrequest(struct usb_ctrlrequest *cmd)
{
 if (!cmd) {
  pr_debug("       : null pointer\n");
  return;
 }

 pr_debug("       ");
 pr_debug("bRequestType(%02X) bRequest(%02X) wValue(%04X) wIndex(%04X) wLength(%04X) ",
   cmd->bRequestType, cmd->bRequest,
   cmd->wValue, cmd->wIndex, cmd->wLength);
 pr_debug("\n       ");

 if ((cmd->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
  pr_debug("STANDARD ");
  switch (cmd->bRequest) {
  case 134:
   pr_debug("GET_STATUS\n");
   break;
  case 138:
   pr_debug("CLEAR_FEAT\n");
   break;
  case 130:
   pr_debug("SET_FEAT\n");
   break;
  case 133:
   pr_debug("SET_ADDRRS\n");
   break;
  case 136:
   pr_debug("GET_DESCRI\n");
   break;
  case 131:
   pr_debug("SET_DESCRI\n");
   break;
  case 137:
   pr_debug("GET_CONFIG\n");
   break;
  case 132:
   pr_debug("SET_CONFIG\n");
   break;
  case 135:
   pr_debug("GET_INTERF\n");
   break;
  case 129:
   pr_debug("SET_INTERF\n");
   break;
  case 128:
   pr_debug("SYNC_FRAME\n");
   break;
  default:
   pr_debug("REQ(%02X)\n", cmd->bRequest);
   break;
  }
  usbip_dump_request_type(cmd->bRequestType);
 } else if ((cmd->bRequestType & USB_TYPE_MASK) == USB_TYPE_CLASS) {
  pr_debug("CLASS\n");
 } else if ((cmd->bRequestType & USB_TYPE_MASK) == USB_TYPE_VENDOR) {
  pr_debug("VENDOR\n");
 } else if ((cmd->bRequestType & USB_TYPE_MASK) == USB_TYPE_RESERVED) {
  pr_debug("RESERVED\n");
 }
}
