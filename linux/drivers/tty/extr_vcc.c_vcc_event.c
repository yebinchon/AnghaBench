
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int dummy; } ;
struct vcc_port {int lock; struct vio_driver_state vio; } ;


 int ECONNRESET ;



 int pr_err (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vcc_ldc_read (struct vcc_port*) ;
 int vio_conn_reset (struct vio_driver_state*) ;
 int vio_link_state_change (struct vio_driver_state*,int) ;

__attribute__((used)) static void vcc_event(void *arg, int event)
{
 struct vio_driver_state *vio;
 struct vcc_port *port;
 unsigned long flags;
 int rv;

 port = arg;
 vio = &port->vio;

 spin_lock_irqsave(&port->lock, flags);

 switch (event) {
 case 129:
 case 128:
  vio_link_state_change(vio, event);
  break;

 case 130:
  rv = vcc_ldc_read(port);
  if (rv == -ECONNRESET)
   vio_conn_reset(vio);
  break;

 default:
  pr_err("VCC: unexpected LDC event(%d)\n", event);
 }

 spin_unlock_irqrestore(&port->lock, flags);
}
