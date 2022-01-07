
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_port {int mutex; TYPE_1__* ops; scalar_t__ console; } ;
struct TYPE_2__ {int (* shutdown ) (struct tty_port*) ;} ;


 scalar_t__ C_HUPCL (struct tty_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_port*) ;
 scalar_t__ tty_port_initialized (struct tty_port*) ;
 int tty_port_lower_dtr_rts (struct tty_port*) ;
 int tty_port_set_initialized (struct tty_port*,int ) ;

__attribute__((used)) static void tty_port_shutdown(struct tty_port *port, struct tty_struct *tty)
{
 mutex_lock(&port->mutex);
 if (port->console)
  goto out;

 if (tty_port_initialized(port)) {
  tty_port_set_initialized(port, 0);




  if (tty && C_HUPCL(tty))
   tty_port_lower_dtr_rts(port);

  if (port->ops->shutdown)
   port->ops->shutdown(port);
 }
out:
 mutex_unlock(&port->mutex);
}
