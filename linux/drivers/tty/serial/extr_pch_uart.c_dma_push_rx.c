
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx; } ;
struct uart_port {TYPE_1__ icount; int dev; TYPE_2__* state; } ;
struct tty_port {int dummy; } ;
struct eg20t_port {int sg_rx; struct uart_port port; } ;
struct TYPE_4__ {struct tty_port port; } ;


 int dev_warn (int ,char*,int) ;
 int sg_virt (int *) ;
 int tty_buffer_request_room (struct tty_port*,int) ;
 int tty_insert_flip_string (struct tty_port*,int ,int) ;

__attribute__((used)) static int dma_push_rx(struct eg20t_port *priv, int size)
{
 int room;
 struct uart_port *port = &priv->port;
 struct tty_port *tport = &port->state->port;

 room = tty_buffer_request_room(tport, size);

 if (room < size)
  dev_warn(port->dev, "Rx overrun: dropping %u bytes\n",
    size - room);
 if (!room)
  return 0;

 tty_insert_flip_string(tport, sg_virt(&priv->sg_rx), size);

 port->icount.rx += room;

 return room;
}
