
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_port {TYPE_1__* mux; } ;
struct TYPE_2__ {int (* set ) (TYPE_1__*,int) ;} ;


 int stub1 (TYPE_1__*,int) ;

int typec_set_mode(struct typec_port *port, int mode)
{
 return port->mux ? port->mux->set(port->mux, mode) : 0;
}
