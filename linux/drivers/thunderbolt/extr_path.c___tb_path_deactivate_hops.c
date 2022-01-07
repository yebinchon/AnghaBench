
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_path {int path_length; TYPE_1__* hops; int clear_fc; } ;
struct TYPE_2__ {int in_hop_index; int in_port; } ;


 int ENODEV ;
 int __tb_path_deactivate_hop (int ,int ,int ) ;
 int tb_port_warn (int ,char*,int,int ) ;

__attribute__((used)) static void __tb_path_deactivate_hops(struct tb_path *path, int first_hop)
{
 int i, res;

 for (i = first_hop; i < path->path_length; i++) {
  res = __tb_path_deactivate_hop(path->hops[i].in_port,
            path->hops[i].in_hop_index,
            path->clear_fc);
  if (res && res != -ENODEV)
   tb_port_warn(path->hops[i].in_port,
         "hop deactivation failed for hop %d, index %d\n",
         i, path->hops[i].in_hop_index);
 }
}
