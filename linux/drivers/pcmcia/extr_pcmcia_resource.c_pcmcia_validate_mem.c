
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {TYPE_1__* resource_ops; } ;
struct TYPE_2__ {int (* validate_mem ) (struct pcmcia_socket*) ;} ;


 int stub1 (struct pcmcia_socket*) ;

int pcmcia_validate_mem(struct pcmcia_socket *s)
{
 if (s->resource_ops->validate_mem)
  return s->resource_ops->validate_mem(s);

 return 0;
}
