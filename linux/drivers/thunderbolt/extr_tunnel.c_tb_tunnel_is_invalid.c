
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_tunnel {int npaths; TYPE_1__** paths; } ;
struct TYPE_2__ {int activated; } ;


 int WARN_ON (int) ;
 scalar_t__ tb_path_is_invalid (TYPE_1__*) ;

bool tb_tunnel_is_invalid(struct tb_tunnel *tunnel)
{
 int i;

 for (i = 0; i < tunnel->npaths; i++) {
  WARN_ON(!tunnel->paths[i]->activated);
  if (tb_path_is_invalid(tunnel->paths[i]))
   return 1;
 }

 return 0;
}
