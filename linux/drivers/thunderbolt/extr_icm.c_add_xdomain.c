
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
typedef void* u8 ;
typedef int u64 ;
struct tb_xdomain {void* depth; void* link; } ;
struct tb_switch {int dev; int tb; } ;
struct TYPE_2__ {struct tb_xdomain* xdomain; } ;


 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 TYPE_1__* tb_port_at (int ,struct tb_switch*) ;
 int tb_xdomain_add (struct tb_xdomain*) ;
 struct tb_xdomain* tb_xdomain_alloc (int ,int *,int ,int const*,int const*) ;

__attribute__((used)) static void add_xdomain(struct tb_switch *sw, u64 route,
   const uuid_t *local_uuid, const uuid_t *remote_uuid,
   u8 link, u8 depth)
{
 struct tb_xdomain *xd;

 pm_runtime_get_sync(&sw->dev);

 xd = tb_xdomain_alloc(sw->tb, &sw->dev, route, local_uuid, remote_uuid);
 if (!xd)
  goto out;

 xd->link = link;
 xd->depth = depth;

 tb_port_at(route, sw)->xdomain = xd;

 tb_xdomain_add(xd);

out:
 pm_runtime_mark_last_busy(&sw->dev);
 pm_runtime_put_autosuspend(&sw->dev);
}
