
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_cdc_line_coding {int dummy; } ;
struct gs_port {unsigned int port_num; struct usb_cdc_line_coding port_line_coding; int write_pool; int read_queue; int read_pool; int push; int close_wait; int drain_wait; int port_lock; int port; } ;
struct TYPE_2__ {int lock; struct gs_port* port; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int gs_rx_push ;
 int init_waitqueue_head (int *) ;
 struct gs_port* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* ports ;
 int spin_lock_init (int *) ;
 int tty_port_init (int *) ;

__attribute__((used)) static int
gs_port_alloc(unsigned port_num, struct usb_cdc_line_coding *coding)
{
 struct gs_port *port;
 int ret = 0;

 mutex_lock(&ports[port_num].lock);
 if (ports[port_num].port) {
  ret = -EBUSY;
  goto out;
 }

 port = kzalloc(sizeof(struct gs_port), GFP_KERNEL);
 if (port == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }

 tty_port_init(&port->port);
 spin_lock_init(&port->port_lock);
 init_waitqueue_head(&port->drain_wait);
 init_waitqueue_head(&port->close_wait);

 INIT_DELAYED_WORK(&port->push, gs_rx_push);

 INIT_LIST_HEAD(&port->read_pool);
 INIT_LIST_HEAD(&port->read_queue);
 INIT_LIST_HEAD(&port->write_pool);

 port->port_num = port_num;
 port->port_line_coding = *coding;

 ports[port_num].port = port;
out:
 mutex_unlock(&ports[port_num].lock);
 return ret;
}
