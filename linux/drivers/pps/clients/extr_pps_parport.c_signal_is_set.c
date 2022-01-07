
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_status ) (struct parport*) ;} ;


 int PARPORT_STATUS_ACK ;
 int stub1 (struct parport*) ;

__attribute__((used)) static inline int signal_is_set(struct parport *port)
{
 return (port->ops->read_status(port) & PARPORT_STATUS_ACK) != 0;
}
