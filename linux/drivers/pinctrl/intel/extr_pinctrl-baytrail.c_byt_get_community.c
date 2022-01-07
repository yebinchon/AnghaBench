
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_community {unsigned int pin_base; unsigned int npins; } ;
struct byt_gpio {struct intel_community* communities_copy; TYPE_1__* soc_data; } ;
struct TYPE_2__ {int ncommunities; } ;



__attribute__((used)) static struct intel_community *byt_get_community(struct byt_gpio *vg,
       unsigned int pin)
{
 struct intel_community *comm;
 int i;

 for (i = 0; i < vg->soc_data->ncommunities; i++) {
  comm = vg->communities_copy + i;
  if (pin < comm->pin_base + comm->npins && pin >= comm->pin_base)
   return comm;
 }

 return ((void*)0);
}
