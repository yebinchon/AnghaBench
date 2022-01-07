
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct garmin_data {int write_urbs; scalar_t__ count; scalar_t__ flags; scalar_t__ state; struct usb_serial_port* port; int pktlist; int lock; int timer; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int garmin_init_session (struct usb_serial_port*) ;
 int init_usb_anchor (int *) ;
 int kfree (struct garmin_data*) ;
 struct garmin_data* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int timeout_handler ;
 int timer_setup (int *,int ,int ) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct garmin_data*) ;

__attribute__((used)) static int garmin_port_probe(struct usb_serial_port *port)
{
 int status;
 struct garmin_data *garmin_data_p;

 garmin_data_p = kzalloc(sizeof(struct garmin_data), GFP_KERNEL);
 if (!garmin_data_p)
  return -ENOMEM;

 timer_setup(&garmin_data_p->timer, timeout_handler, 0);
 spin_lock_init(&garmin_data_p->lock);
 INIT_LIST_HEAD(&garmin_data_p->pktlist);
 garmin_data_p->port = port;
 garmin_data_p->state = 0;
 garmin_data_p->flags = 0;
 garmin_data_p->count = 0;
 init_usb_anchor(&garmin_data_p->write_urbs);
 usb_set_serial_port_data(port, garmin_data_p);

 status = garmin_init_session(port);
 if (status)
  goto err_free;

 return 0;
err_free:
 kfree(garmin_data_p);

 return status;
}
