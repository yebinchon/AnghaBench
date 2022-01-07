
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_tunnel {int npaths; TYPE_1__** paths; } ;
struct TYPE_2__ {scalar_t__ activated; } ;


 int EINVAL ;
 int tb_tunnel_WARN (struct tb_tunnel*,char*) ;
 int tb_tunnel_restart (struct tb_tunnel*) ;

int tb_tunnel_activate(struct tb_tunnel *tunnel)
{
 int i;

 for (i = 0; i < tunnel->npaths; i++) {
  if (tunnel->paths[i]->activated) {
   tb_tunnel_WARN(tunnel,
           "trying to activate an already activated tunnel\n");
   return -EINVAL;
  }
 }

 return tb_tunnel_restart(tunnel);
}
