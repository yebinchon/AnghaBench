
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct fwtty_port* driver_data; } ;
struct TYPE_2__ {int throttled; } ;
struct fwtty_port {TYPE_1__ stats; } ;



__attribute__((used)) static void fwtty_throttle(struct tty_struct *tty)
{
 struct fwtty_port *port = tty->driver_data;
 ++port->stats.throttled;
}
