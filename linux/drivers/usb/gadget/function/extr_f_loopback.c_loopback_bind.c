
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct usb_function {int name; } ;
struct usb_configuration {struct usb_composite_dev* cdev; } ;
struct usb_composite_dev {TYPE_3__* gadget; } ;
struct f_loopback {TYPE_2__* out_ep; TYPE_1__* in_ep; } ;
struct TYPE_24__ {int bEndpointAddress; } ;
struct TYPE_23__ {int bInterfaceNumber; int iInterface; } ;
struct TYPE_22__ {int bEndpointAddress; } ;
struct TYPE_21__ {int bEndpointAddress; } ;
struct TYPE_20__ {int id; } ;
struct TYPE_19__ {int bEndpointAddress; } ;
struct TYPE_18__ {int name; } ;
struct TYPE_17__ {int name; } ;
struct TYPE_16__ {int name; } ;
struct TYPE_15__ {int bEndpointAddress; } ;


 int DBG (struct usb_composite_dev*,char*,char*,int ,int ,int ) ;
 int ENODEV ;
 int ERROR (struct usb_composite_dev*,char*,int ,int ) ;
 TYPE_4__ fs_loop_sink_desc ;
 TYPE_4__ fs_loop_source_desc ;
 int fs_loopback_descs ;
 struct f_loopback* func_to_loop (struct usb_function*) ;
 scalar_t__ gadget_is_dualspeed (TYPE_3__*) ;
 scalar_t__ gadget_is_superspeed (TYPE_3__*) ;
 TYPE_10__ hs_loop_sink_desc ;
 TYPE_9__ hs_loop_source_desc ;
 int hs_loopback_descs ;
 TYPE_8__ loopback_intf ;
 TYPE_7__ ss_loop_sink_desc ;
 TYPE_6__ ss_loop_source_desc ;
 int ss_loopback_descs ;
 TYPE_5__* strings_loopback ;
 int usb_assign_descriptors (struct usb_function*,int ,int ,int ,int *) ;
 void* usb_ep_autoconfig (TYPE_3__*,TYPE_4__*) ;
 int usb_interface_id (struct usb_configuration*,struct usb_function*) ;
 int usb_string_id (struct usb_composite_dev*) ;

__attribute__((used)) static int loopback_bind(struct usb_configuration *c, struct usb_function *f)
{
 struct usb_composite_dev *cdev = c->cdev;
 struct f_loopback *loop = func_to_loop(f);
 int id;
 int ret;


 id = usb_interface_id(c, f);
 if (id < 0)
  return id;
 loopback_intf.bInterfaceNumber = id;

 id = usb_string_id(cdev);
 if (id < 0)
  return id;
 strings_loopback[0].id = id;
 loopback_intf.iInterface = id;



 loop->in_ep = usb_ep_autoconfig(cdev->gadget, &fs_loop_source_desc);
 if (!loop->in_ep) {
autoconf_fail:
  ERROR(cdev, "%s: can't autoconfigure on %s\n",
   f->name, cdev->gadget->name);
  return -ENODEV;
 }

 loop->out_ep = usb_ep_autoconfig(cdev->gadget, &fs_loop_sink_desc);
 if (!loop->out_ep)
  goto autoconf_fail;


 hs_loop_source_desc.bEndpointAddress =
  fs_loop_source_desc.bEndpointAddress;
 hs_loop_sink_desc.bEndpointAddress = fs_loop_sink_desc.bEndpointAddress;


 ss_loop_source_desc.bEndpointAddress =
  fs_loop_source_desc.bEndpointAddress;
 ss_loop_sink_desc.bEndpointAddress = fs_loop_sink_desc.bEndpointAddress;

 ret = usb_assign_descriptors(f, fs_loopback_descs, hs_loopback_descs,
   ss_loopback_descs, ((void*)0));
 if (ret)
  return ret;

 DBG(cdev, "%s speed %s: IN/%s, OUT/%s\n",
     (gadget_is_superspeed(c->cdev->gadget) ? "super" :
      (gadget_is_dualspeed(c->cdev->gadget) ? "dual" : "full")),
   f->name, loop->in_ep->name, loop->out_ep->name);
 return 0;
}
