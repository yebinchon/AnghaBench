
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_mport_attr {int dummy; } ;
struct rio_mport {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* query_mport ) (struct rio_mport*,struct rio_mport_attr*) ;} ;


 int ENODATA ;
 int stub1 (struct rio_mport*,struct rio_mport_attr*) ;

int rio_query_mport(struct rio_mport *port,
      struct rio_mport_attr *mport_attr)
{
 if (!port->ops->query_mport)
  return -ENODATA;
 return port->ops->query_mport(port, mport_attr);
}
