
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dev; int port_number; struct usb_serial* serial; } ;
struct usb_serial {int num_ports; } ;
struct sierra_port_private {int num_out_urbs; int num_in_urbs; int delayed; int active; int lock; } ;
struct sierra_iface_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int N_IN_URB ;
 int N_IN_URB_HM ;
 int N_OUT_URB ;
 int N_OUT_URB_HM ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 int init_usb_anchor (int *) ;
 scalar_t__ is_himemory (int ,struct sierra_iface_info const*) ;
 struct sierra_port_private* kzalloc (int,int ) ;
 int sierra_interface_num (struct usb_serial*) ;
 int spin_lock_init (int *) ;
 struct sierra_iface_info typeA_interface_list ;
 struct sierra_iface_info typeB_interface_list ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct sierra_port_private*) ;

__attribute__((used)) static int sierra_port_probe(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct sierra_port_private *portdata;
 const struct sierra_iface_info *himemoryp;
 u8 ifnum;

 portdata = kzalloc(sizeof(*portdata), GFP_KERNEL);
 if (!portdata)
  return -ENOMEM;

 spin_lock_init(&portdata->lock);
 init_usb_anchor(&portdata->active);
 init_usb_anchor(&portdata->delayed);


 portdata->num_out_urbs = N_OUT_URB;
 portdata->num_in_urbs = N_IN_URB;


 if (serial->num_ports == 1) {

  ifnum = sierra_interface_num(serial);
  himemoryp = &typeB_interface_list;
 } else {



  ifnum = port->port_number;
  himemoryp = &typeA_interface_list;
 }

 if (is_himemory(ifnum, himemoryp)) {
  portdata->num_out_urbs = N_OUT_URB_HM;
  portdata->num_in_urbs = N_IN_URB_HM;
 }

 dev_dbg(&port->dev,
   "Memory usage (urbs) interface #%d, in=%d, out=%d\n",
   ifnum, portdata->num_in_urbs, portdata->num_out_urbs);

 usb_set_serial_port_data(port, portdata);

 return 0;
}
