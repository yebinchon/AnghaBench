
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct usb_hcd {int dummy; } ;
struct gb_usb_hub_control_response {int buf; } ;
struct gb_usb_hub_control_request {void* wLength; void* wIndex; void* wValue; void* typeReq; } ;
struct gb_usb_device {int connection; } ;
struct gb_operation {TYPE_2__* response; TYPE_1__* request; } ;
struct TYPE_4__ {struct gb_usb_hub_control_response* payload; } ;
struct TYPE_3__ {struct gb_usb_hub_control_request* payload; } ;


 int ENOMEM ;
 int GB_USB_TYPE_HUB_CONTROL ;
 int GFP_KERNEL ;
 void* cpu_to_le16 (int) ;
 struct gb_operation* gb_operation_create (int ,int ,int,size_t,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync (struct gb_operation*) ;
 int memcpy (char*,int ,int) ;
 struct gb_usb_device* to_gb_usb_device (struct usb_hcd*) ;

__attribute__((used)) static int hub_control(struct usb_hcd *hcd, u16 typeReq, u16 wValue, u16 wIndex,
         char *buf, u16 wLength)
{
 struct gb_usb_device *dev = to_gb_usb_device(hcd);
 struct gb_operation *operation;
 struct gb_usb_hub_control_request *request;
 struct gb_usb_hub_control_response *response;
 size_t response_size;
 int ret;


 response_size = sizeof(*response) + wLength;

 operation = gb_operation_create(dev->connection,
     GB_USB_TYPE_HUB_CONTROL,
     sizeof(*request),
     response_size,
     GFP_KERNEL);
 if (!operation)
  return -ENOMEM;

 request = operation->request->payload;
 request->typeReq = cpu_to_le16(typeReq);
 request->wValue = cpu_to_le16(wValue);
 request->wIndex = cpu_to_le16(wIndex);
 request->wLength = cpu_to_le16(wLength);

 ret = gb_operation_request_send_sync(operation);
 if (ret)
  goto out;

 if (wLength) {

  response = operation->response->payload;
  memcpy(buf, response->buf, wLength);
 }
out:
 gb_operation_put(operation);

 return ret;
}
