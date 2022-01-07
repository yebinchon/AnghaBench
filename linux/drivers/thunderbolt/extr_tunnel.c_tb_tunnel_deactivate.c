
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_tunnel {int npaths; TYPE_1__** paths; int (* activate ) (struct tb_tunnel*,int) ;} ;
struct TYPE_2__ {scalar_t__ activated; } ;


 int stub1 (struct tb_tunnel*,int) ;
 int tb_path_deactivate (TYPE_1__*) ;
 int tb_tunnel_dbg (struct tb_tunnel*,char*) ;

void tb_tunnel_deactivate(struct tb_tunnel *tunnel)
{
 int i;

 tb_tunnel_dbg(tunnel, "deactivating\n");

 if (tunnel->activate)
  tunnel->activate(tunnel, 0);

 for (i = 0; i < tunnel->npaths; i++) {
  if (tunnel->paths[i] && tunnel->paths[i]->activated)
   tb_path_deactivate(tunnel->paths[i]);
 }
}
