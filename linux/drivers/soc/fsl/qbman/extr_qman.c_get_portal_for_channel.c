
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct qman_portal {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ channel; } ;


 struct qman_portal** affine_portals ;
 int num_possible_cpus () ;

__attribute__((used)) static inline struct qman_portal *get_portal_for_channel(u16 channel)
{
 int i;

 for (i = 0; i < num_possible_cpus(); i++) {
  if (affine_portals[i] &&
      affine_portals[i]->config->channel == channel)
   return affine_portals[i];
 }

 return ((void*)0);
}
