
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_switch {struct tb_port* ports; int tb; } ;
struct tb_regs_hop {size_t out_port; int next_hop; int enable; } ;
struct tb_port {struct tb_port* remote; struct tb_switch* sw; } ;
struct tb_path {char const* name; size_t path_length; int activated; TYPE_1__* hops; int tb; } ;
struct TYPE_2__ {int in_hop_index; int in_counter_index; int next_hop_index; struct tb_port* out_port; struct tb_port* in_port; } ;


 int GFP_KERNEL ;
 int TB_CFG_HOPS ;
 int TB_PATH_MAX_HOPS ;
 TYPE_1__* kcalloc (size_t,int,int ) ;
 int kfree (struct tb_path*) ;
 struct tb_path* kzalloc (int,int ) ;
 int tb_path_find_src_hopid (struct tb_port*,struct tb_port*,int) ;
 int tb_path_free (struct tb_path*) ;
 scalar_t__ tb_port_alloc_in_hopid (struct tb_port*,int,int) ;
 scalar_t__ tb_port_alloc_out_hopid (struct tb_port*,int,int) ;
 int tb_port_read (struct tb_port*,struct tb_regs_hop*,int ,int,int) ;
 int tb_port_release_in_hopid (struct tb_port*,int) ;
 int tb_port_warn (struct tb_port*,char*,int) ;

struct tb_path *tb_path_discover(struct tb_port *src, int src_hopid,
     struct tb_port *dst, int dst_hopid,
     struct tb_port **last, const char *name)
{
 struct tb_port *out_port;
 struct tb_regs_hop hop;
 struct tb_path *path;
 struct tb_switch *sw;
 struct tb_port *p;
 size_t num_hops;
 int ret, i, h;

 if (src_hopid < 0 && dst) {







  src_hopid = tb_path_find_src_hopid(src, dst, dst_hopid);
  if (!src_hopid)
   return ((void*)0);
 }

 p = src;
 h = src_hopid;
 num_hops = 0;

 for (i = 0; p && i < TB_PATH_MAX_HOPS; i++) {
  sw = p->sw;

  ret = tb_port_read(p, &hop, TB_CFG_HOPS, 2 * h, 2);
  if (ret) {
   tb_port_warn(p, "failed to read path at %d\n", h);
   return ((void*)0);
  }


  if (!hop.enable)
   break;

  out_port = &sw->ports[hop.out_port];
  if (last)
   *last = out_port;

  h = hop.next_hop;
  p = out_port->remote;
  num_hops++;
 }

 path = kzalloc(sizeof(*path), GFP_KERNEL);
 if (!path)
  return ((void*)0);

 path->name = name;
 path->tb = src->sw->tb;
 path->path_length = num_hops;
 path->activated = 1;

 path->hops = kcalloc(num_hops, sizeof(*path->hops), GFP_KERNEL);
 if (!path->hops) {
  kfree(path);
  return ((void*)0);
 }

 p = src;
 h = src_hopid;

 for (i = 0; i < num_hops; i++) {
  int next_hop;

  sw = p->sw;

  ret = tb_port_read(p, &hop, TB_CFG_HOPS, 2 * h, 2);
  if (ret) {
   tb_port_warn(p, "failed to read path at %d\n", h);
   goto err;
  }

  if (tb_port_alloc_in_hopid(p, h, h) < 0)
   goto err;

  out_port = &sw->ports[hop.out_port];
  next_hop = hop.next_hop;

  if (tb_port_alloc_out_hopid(out_port, next_hop, next_hop) < 0) {
   tb_port_release_in_hopid(p, h);
   goto err;
  }

  path->hops[i].in_port = p;
  path->hops[i].in_hop_index = h;
  path->hops[i].in_counter_index = -1;
  path->hops[i].out_port = out_port;
  path->hops[i].next_hop_index = next_hop;

  h = next_hop;
  p = out_port->remote;
 }

 return path;

err:
 tb_port_warn(src, "failed to discover path starting at HopID %d\n",
       src_hopid);
 tb_path_free(path);
 return ((void*)0);
}
