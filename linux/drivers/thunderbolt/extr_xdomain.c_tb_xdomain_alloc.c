
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uuid_t ;
typedef int u64 ;
struct TYPE_6__ {int groups; int * type; int * bus; int parent; } ;
struct tb_xdomain {int needs_uuid; struct tb_xdomain* local_uuid; TYPE_1__ dev; void* remote_uuid; int properties_changed_work; int get_properties_work; int get_uuid_work; int lock; int service_ids; int route; struct tb* tb; } ;
struct tb {int index; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int dev_set_name (TYPE_1__*,char*,int ,int ) ;
 int device_initialize (TYPE_1__*) ;
 int get_device (struct device*) ;
 int ida_init (int *) ;
 int kfree (struct tb_xdomain*) ;
 void* kmemdup (int const*,int,int ) ;
 struct tb_xdomain* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_get_noresume (TYPE_1__*) ;
 int pm_runtime_set_active (TYPE_1__*) ;
 int tb_bus_type ;
 int tb_xdomain_get_properties ;
 int tb_xdomain_get_uuid ;
 int tb_xdomain_properties_changed ;
 int tb_xdomain_type ;
 int xdomain_attr_groups ;

struct tb_xdomain *tb_xdomain_alloc(struct tb *tb, struct device *parent,
        u64 route, const uuid_t *local_uuid,
        const uuid_t *remote_uuid)
{
 struct tb_xdomain *xd;

 xd = kzalloc(sizeof(*xd), GFP_KERNEL);
 if (!xd)
  return ((void*)0);

 xd->tb = tb;
 xd->route = route;
 ida_init(&xd->service_ids);
 mutex_init(&xd->lock);
 INIT_DELAYED_WORK(&xd->get_uuid_work, tb_xdomain_get_uuid);
 INIT_DELAYED_WORK(&xd->get_properties_work, tb_xdomain_get_properties);
 INIT_DELAYED_WORK(&xd->properties_changed_work,
     tb_xdomain_properties_changed);

 xd->local_uuid = kmemdup(local_uuid, sizeof(uuid_t), GFP_KERNEL);
 if (!xd->local_uuid)
  goto err_free;

 if (remote_uuid) {
  xd->remote_uuid = kmemdup(remote_uuid, sizeof(uuid_t),
       GFP_KERNEL);
  if (!xd->remote_uuid)
   goto err_free_local_uuid;
 } else {
  xd->needs_uuid = 1;
 }

 device_initialize(&xd->dev);
 xd->dev.parent = get_device(parent);
 xd->dev.bus = &tb_bus_type;
 xd->dev.type = &tb_xdomain_type;
 xd->dev.groups = xdomain_attr_groups;
 dev_set_name(&xd->dev, "%u-%llx", tb->index, route);





 pm_runtime_set_active(&xd->dev);
 pm_runtime_get_noresume(&xd->dev);
 pm_runtime_enable(&xd->dev);

 return xd;

err_free_local_uuid:
 kfree(xd->local_uuid);
err_free:
 kfree(xd);

 return ((void*)0);
}
