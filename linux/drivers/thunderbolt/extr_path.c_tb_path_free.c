
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_path_hop {int path_length; struct tb_path_hop* hops; int next_hop_index; scalar_t__ out_port; int in_hop_index; scalar_t__ in_port; } ;
struct tb_path {int path_length; struct tb_path* hops; int next_hop_index; scalar_t__ out_port; int in_hop_index; scalar_t__ in_port; } ;


 int kfree (struct tb_path_hop*) ;
 int tb_port_release_in_hopid (scalar_t__,int ) ;
 int tb_port_release_out_hopid (scalar_t__,int ) ;

void tb_path_free(struct tb_path *path)
{
 int i;

 for (i = 0; i < path->path_length; i++) {
  const struct tb_path_hop *hop = &path->hops[i];

  if (hop->in_port)
   tb_port_release_in_hopid(hop->in_port,
       hop->in_hop_index);
  if (hop->out_port)
   tb_port_release_out_hopid(hop->out_port,
        hop->next_hop_index);
 }

 kfree(path->hops);
 kfree(path);
}
