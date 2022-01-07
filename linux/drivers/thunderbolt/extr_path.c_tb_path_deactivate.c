
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tb_path {int activated; int path_length; TYPE_3__* hops; int name; int tb; } ;
struct TYPE_6__ {TYPE_2__* out_port; TYPE_1__* in_port; } ;
struct TYPE_5__ {int port; int sw; } ;
struct TYPE_4__ {int port; int sw; } ;


 int __tb_path_deactivate_hops (struct tb_path*,int ) ;
 int __tb_path_deallocate_nfc (struct tb_path*,int ) ;
 int tb_WARN (int ,char*) ;
 int tb_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int tb_route (int ) ;

void tb_path_deactivate(struct tb_path *path)
{
 if (!path->activated) {
  tb_WARN(path->tb, "trying to deactivate an inactive path\n");
  return;
 }
 tb_dbg(path->tb,
        "deactivating %s path from %llx:%x to %llx:%x\n",
        path->name, tb_route(path->hops[0].in_port->sw),
        path->hops[0].in_port->port,
        tb_route(path->hops[path->path_length - 1].out_port->sw),
        path->hops[path->path_length - 1].out_port->port);
 __tb_path_deactivate_hops(path, 0);
 __tb_path_deallocate_nfc(path, 0);
 path->activated = 0;
}
