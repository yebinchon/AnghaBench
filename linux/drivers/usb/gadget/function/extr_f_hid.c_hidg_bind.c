
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct usb_string {int id; } ;
struct usb_function {TYPE_2__* config; } ;
struct usb_ep {int dummy; } ;
struct usb_configuration {TYPE_3__* cdev; } ;
struct f_hidg {int write_pending; int * req; struct usb_ep* in_ep; int cdev; int minor; int completed_out_req; int read_queue; int write_queue; int read_spinlock; int write_spinlock; int report_desc_length; int report_length; int protocol; int bInterfaceProtocol; int bInterfaceSubClass; struct usb_ep* out_ep; } ;
struct device {int id; } ;
typedef int dev_t ;
struct TYPE_26__ {int bInterfaceNumber; int bInterfaceProtocol; int bInterfaceSubClass; int iInterface; } ;
struct TYPE_25__ {void* wBytesPerInterval; } ;
struct TYPE_24__ {int bEndpointAddress; void* wMaxPacketSize; } ;
struct TYPE_23__ {void* wBytesPerInterval; } ;
struct TYPE_22__ {int bEndpointAddress; void* wMaxPacketSize; } ;
struct TYPE_21__ {int bEndpointAddress; void* wMaxPacketSize; } ;
struct TYPE_20__ {int gadget; } ;
struct TYPE_19__ {int cdev; } ;
struct TYPE_18__ {void* wDescriptorLength; int bDescriptorType; } ;
struct TYPE_17__ {TYPE_1__* desc; } ;
struct TYPE_16__ {int bEndpointAddress; void* wMaxPacketSize; } ;
struct TYPE_15__ {int bEndpointAddress; void* wMaxPacketSize; } ;


 int ARRAY_SIZE (int ) ;
 size_t CT_FUNC_HID_IDX ;
 int ENODEV ;
 int ERROR (int ,char*) ;
 int HID_DT_REPORT ;
 int HID_REPORT_PROTOCOL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct usb_string*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct usb_string*) ;
 int cdev_add (int *,int ,int) ;
 int cdev_del (int *) ;
 int cdev_init (int *,int *) ;
 void* cpu_to_le16 (int ) ;
 int ct_func_string_defs ;
 int ct_func_strings ;
 struct usb_string* device_create (int ,int *,int ,int *,char*,char*,int ) ;
 int f_hidg_fops ;
 int free_ep_req (struct usb_ep*,int *) ;
 struct f_hidg* func_to_hidg (struct usb_function*) ;
 int hidg_class ;
 TYPE_14__ hidg_desc ;
 int hidg_fs_descriptors ;
 TYPE_4__ hidg_fs_in_ep_desc ;
 TYPE_4__ hidg_fs_out_ep_desc ;
 int hidg_hs_descriptors ;
 TYPE_11__ hidg_hs_in_ep_desc ;
 TYPE_10__ hidg_hs_out_ep_desc ;
 TYPE_9__ hidg_interface_desc ;
 int hidg_ss_descriptors ;
 TYPE_8__ hidg_ss_in_comp_desc ;
 TYPE_7__ hidg_ss_in_ep_desc ;
 TYPE_6__ hidg_ss_out_comp_desc ;
 TYPE_5__ hidg_ss_out_ep_desc ;
 int init_waitqueue_head (int *) ;
 int major ;
 int spin_lock_init (int *) ;
 int usb_assign_descriptors (struct usb_function*,int ,int ,int ,int *) ;
 struct usb_ep* usb_ep_autoconfig (int ,TYPE_4__*) ;
 int usb_free_all_descriptors (struct usb_function*) ;
 struct usb_string* usb_gstrings_attach (TYPE_3__*,int ,int ) ;
 int usb_interface_id (struct usb_configuration*,struct usb_function*) ;

__attribute__((used)) static int hidg_bind(struct usb_configuration *c, struct usb_function *f)
{
 struct usb_ep *ep;
 struct f_hidg *hidg = func_to_hidg(f);
 struct usb_string *us;
 struct device *device;
 int status;
 dev_t dev;


 us = usb_gstrings_attach(c->cdev, ct_func_strings,
     ARRAY_SIZE(ct_func_string_defs));
 if (IS_ERR(us))
  return PTR_ERR(us);
 hidg_interface_desc.iInterface = us[CT_FUNC_HID_IDX].id;


 status = usb_interface_id(c, f);
 if (status < 0)
  goto fail;
 hidg_interface_desc.bInterfaceNumber = status;


 status = -ENODEV;
 ep = usb_ep_autoconfig(c->cdev->gadget, &hidg_fs_in_ep_desc);
 if (!ep)
  goto fail;
 hidg->in_ep = ep;

 ep = usb_ep_autoconfig(c->cdev->gadget, &hidg_fs_out_ep_desc);
 if (!ep)
  goto fail;
 hidg->out_ep = ep;


 hidg_interface_desc.bInterfaceSubClass = hidg->bInterfaceSubClass;
 hidg_interface_desc.bInterfaceProtocol = hidg->bInterfaceProtocol;
 hidg->protocol = HID_REPORT_PROTOCOL;
 hidg_ss_in_ep_desc.wMaxPacketSize = cpu_to_le16(hidg->report_length);
 hidg_ss_in_comp_desc.wBytesPerInterval =
    cpu_to_le16(hidg->report_length);
 hidg_hs_in_ep_desc.wMaxPacketSize = cpu_to_le16(hidg->report_length);
 hidg_fs_in_ep_desc.wMaxPacketSize = cpu_to_le16(hidg->report_length);
 hidg_ss_out_ep_desc.wMaxPacketSize = cpu_to_le16(hidg->report_length);
 hidg_ss_out_comp_desc.wBytesPerInterval =
    cpu_to_le16(hidg->report_length);
 hidg_hs_out_ep_desc.wMaxPacketSize = cpu_to_le16(hidg->report_length);
 hidg_fs_out_ep_desc.wMaxPacketSize = cpu_to_le16(hidg->report_length);




 hidg_desc.desc[0].bDescriptorType = HID_DT_REPORT;
 hidg_desc.desc[0].wDescriptorLength =
  cpu_to_le16(hidg->report_desc_length);

 hidg_hs_in_ep_desc.bEndpointAddress =
  hidg_fs_in_ep_desc.bEndpointAddress;
 hidg_hs_out_ep_desc.bEndpointAddress =
  hidg_fs_out_ep_desc.bEndpointAddress;

 hidg_ss_in_ep_desc.bEndpointAddress =
  hidg_fs_in_ep_desc.bEndpointAddress;
 hidg_ss_out_ep_desc.bEndpointAddress =
  hidg_fs_out_ep_desc.bEndpointAddress;

 status = usb_assign_descriptors(f, hidg_fs_descriptors,
   hidg_hs_descriptors, hidg_ss_descriptors, ((void*)0));
 if (status)
  goto fail;

 spin_lock_init(&hidg->write_spinlock);
 hidg->write_pending = 1;
 hidg->req = ((void*)0);
 spin_lock_init(&hidg->read_spinlock);
 init_waitqueue_head(&hidg->write_queue);
 init_waitqueue_head(&hidg->read_queue);
 INIT_LIST_HEAD(&hidg->completed_out_req);


 cdev_init(&hidg->cdev, &f_hidg_fops);
 dev = MKDEV(major, hidg->minor);
 status = cdev_add(&hidg->cdev, dev, 1);
 if (status)
  goto fail_free_descs;

 device = device_create(hidg_class, ((void*)0), dev, ((void*)0),
          "%s%d", "hidg", hidg->minor);
 if (IS_ERR(device)) {
  status = PTR_ERR(device);
  goto del;
 }

 return 0;
del:
 cdev_del(&hidg->cdev);
fail_free_descs:
 usb_free_all_descriptors(f);
fail:
 ERROR(f->config->cdev, "hidg_bind FAILED\n");
 if (hidg->req != ((void*)0))
  free_ep_req(hidg->in_ep, hidg->req);

 return status;
}
