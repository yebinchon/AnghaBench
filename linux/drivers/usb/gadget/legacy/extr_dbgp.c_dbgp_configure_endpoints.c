
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct TYPE_16__ {int bDebugOutEndpoint; int bDebugInEndpoint; } ;
struct TYPE_15__ {TYPE_4__* gadget; TYPE_3__* serial; TYPE_2__* o_ep; TYPE_1__* i_ep; } ;
struct TYPE_14__ {int bEndpointAddress; void* wMaxPacketSize; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_12__ {TYPE_2__* out; TYPE_1__* in; } ;
struct TYPE_11__ {TYPE_5__* desc; } ;
struct TYPE_10__ {TYPE_5__* desc; } ;


 int ENODEV ;
 int USB_DEBUG_MAX_PACKET_SIZE ;
 void* cpu_to_le16 (int ) ;
 TYPE_9__ dbg_desc ;
 TYPE_8__ dbgp ;
 int dev_dbg (int *,char*,int) ;
 TYPE_5__ i_desc ;
 TYPE_5__ o_desc ;
 void* usb_ep_autoconfig (struct usb_gadget*,TYPE_5__*) ;
 int usb_ep_autoconfig_reset (struct usb_gadget*) ;

__attribute__((used)) static int dbgp_configure_endpoints(struct usb_gadget *gadget)
{
 int stp;

 usb_ep_autoconfig_reset(gadget);

 dbgp.i_ep = usb_ep_autoconfig(gadget, &i_desc);
 if (!dbgp.i_ep) {
  stp = 1;
  goto fail_1;
 }

 i_desc.wMaxPacketSize =
  cpu_to_le16(USB_DEBUG_MAX_PACKET_SIZE);

 dbgp.o_ep = usb_ep_autoconfig(gadget, &o_desc);
 if (!dbgp.o_ep) {
  stp = 2;
  goto fail_1;
 }

 o_desc.wMaxPacketSize =
  cpu_to_le16(USB_DEBUG_MAX_PACKET_SIZE);

 dbg_desc.bDebugInEndpoint = i_desc.bEndpointAddress;
 dbg_desc.bDebugOutEndpoint = o_desc.bEndpointAddress;
 return 0;

fail_1:
 dev_dbg(&dbgp.gadget->dev, "ep config: failure (%d)\n", stp);
 return -ENODEV;
}
