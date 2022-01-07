
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwtty_port {TYPE_1__* serial; } ;
struct TYPE_2__ {int kref; } ;


 int fwserial_destroy ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void fwtty_port_put(struct fwtty_port *port)
{
 kref_put(&port->serial->kref, fwserial_destroy);
}
