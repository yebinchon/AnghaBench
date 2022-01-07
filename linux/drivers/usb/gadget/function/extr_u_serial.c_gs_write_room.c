
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int port_num; int port_lock; int port_write_buf; scalar_t__ port_usb; } ;


 int kfifo_avail (int *) ;
 int pr_vdebug (char*,int ,struct tty_struct*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gs_write_room(struct tty_struct *tty)
{
 struct gs_port *port = tty->driver_data;
 unsigned long flags;
 int room = 0;

 spin_lock_irqsave(&port->port_lock, flags);
 if (port->port_usb)
  room = kfifo_avail(&port->port_write_buf);
 spin_unlock_irqrestore(&port->port_lock, flags);

 pr_vdebug("gs_write_room: (%d,%p) room=%d\n",
  port->port_num, tty, room);

 return room;
}
