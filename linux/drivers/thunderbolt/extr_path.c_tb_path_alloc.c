
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_port {int link_nr; struct tb_port* dual_link_port; int sw; } ;
struct tb_path {size_t path_length; char const* name; struct tb* tb; TYPE_1__* hops; } ;
struct tb {int dummy; } ;
struct TYPE_2__ {int in_hop_index; int in_counter_index; int next_hop_index; struct tb_port* out_port; struct tb_port* in_port; } ;


 int GFP_KERNEL ;
 int abs (scalar_t__) ;
 TYPE_1__* kcalloc (size_t,int,int ) ;
 int kfree (struct tb_path*) ;
 struct tb_path* kzalloc (int,int ) ;
 struct tb_port* tb_next_port_on_path (struct tb_port*,struct tb_port*,struct tb_port*) ;
 int tb_path_free (struct tb_path*) ;
 int tb_port_alloc_in_hopid (struct tb_port*,int,int) ;
 int tb_port_alloc_out_hopid (struct tb_port*,int,int) ;
 int tb_route (int ) ;
 scalar_t__ tb_route_length (int ) ;

struct tb_path *tb_path_alloc(struct tb *tb, struct tb_port *src, int src_hopid,
         struct tb_port *dst, int dst_hopid, int link_nr,
         const char *name)
{
 struct tb_port *in_port, *out_port;
 int in_hopid, out_hopid;
 struct tb_path *path;
 size_t num_hops;
 int i, ret;

 path = kzalloc(sizeof(*path), GFP_KERNEL);
 if (!path)
  return ((void*)0);





 num_hops = abs(tb_route_length(tb_route(src->sw)) -
         tb_route_length(tb_route(dst->sw))) + 1;

 path->hops = kcalloc(num_hops, sizeof(*path->hops), GFP_KERNEL);
 if (!path->hops) {
  kfree(path);
  return ((void*)0);
 }

 in_hopid = src_hopid;
 out_port = ((void*)0);

 for (i = 0; i < num_hops; i++) {
  in_port = tb_next_port_on_path(src, dst, out_port);
  if (!in_port)
   goto err;

  if (in_port->dual_link_port && in_port->link_nr != link_nr)
   in_port = in_port->dual_link_port;

  ret = tb_port_alloc_in_hopid(in_port, in_hopid, in_hopid);
  if (ret < 0)
   goto err;
  in_hopid = ret;

  out_port = tb_next_port_on_path(src, dst, in_port);
  if (!out_port)
   goto err;

  if (out_port->dual_link_port && out_port->link_nr != link_nr)
   out_port = out_port->dual_link_port;

  if (i == num_hops - 1)
   ret = tb_port_alloc_out_hopid(out_port, dst_hopid,
            dst_hopid);
  else
   ret = tb_port_alloc_out_hopid(out_port, -1, -1);

  if (ret < 0)
   goto err;
  out_hopid = ret;

  path->hops[i].in_hop_index = in_hopid;
  path->hops[i].in_port = in_port;
  path->hops[i].in_counter_index = -1;
  path->hops[i].out_port = out_port;
  path->hops[i].next_hop_index = out_hopid;

  in_hopid = out_hopid;
 }

 path->tb = tb;
 path->path_length = num_hops;
 path->name = name;

 return path;

err:
 tb_path_free(path);
 return ((void*)0);
}
