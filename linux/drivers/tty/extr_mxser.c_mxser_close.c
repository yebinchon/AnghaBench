
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ index; struct mxser_port* driver_data; } ;
struct tty_port {int mutex; } ;
struct mxser_port {int closing; struct tty_port port; } ;
struct file {int dummy; } ;


 scalar_t__ C_HUPCL (struct tty_struct*) ;
 scalar_t__ MXSER_PORTS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mxser_close_port (struct tty_port*) ;
 int mxser_flush_buffer (struct tty_struct*) ;
 int mxser_shutdown_port (struct tty_port*) ;
 int tty_port_close_end (struct tty_port*,struct tty_struct*) ;
 scalar_t__ tty_port_close_start (struct tty_port*,struct tty_struct*,struct file*) ;
 scalar_t__ tty_port_initialized (struct tty_port*) ;
 int tty_port_lower_dtr_rts (struct tty_port*) ;
 int tty_port_set_initialized (struct tty_port*,int ) ;
 int tty_port_tty_set (struct tty_port*,int *) ;

__attribute__((used)) static void mxser_close(struct tty_struct *tty, struct file *filp)
{
 struct mxser_port *info = tty->driver_data;
 struct tty_port *port = &info->port;

 if (tty->index == MXSER_PORTS || info == ((void*)0))
  return;
 if (tty_port_close_start(port, tty, filp) == 0)
  return;
 info->closing = 1;
 mutex_lock(&port->mutex);
 mxser_close_port(port);
 mxser_flush_buffer(tty);
 if (tty_port_initialized(port) && C_HUPCL(tty))
  tty_port_lower_dtr_rts(port);
 mxser_shutdown_port(port);
 tty_port_set_initialized(port, 0);
 mutex_unlock(&port->mutex);
 info->closing = 0;


 tty_port_close_end(port, tty);
 tty_port_tty_set(port, ((void*)0));
}
