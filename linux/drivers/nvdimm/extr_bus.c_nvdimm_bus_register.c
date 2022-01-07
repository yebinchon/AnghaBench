
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nvdimm_bus_descriptor {int of_node; int attr_groups; } ;
struct TYPE_5__ {int of_node; int * bus; int groups; int release; struct device* parent; } ;
struct nvdimm_bus {scalar_t__ id; TYPE_1__ dev; struct nvdimm_bus_descriptor* nd_desc; int badrange; int reconfig_mutex; int wait; int mapping_list; int list; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int badrange_init (int *) ;
 int dev_dbg (TYPE_1__*,char*,int) ;
 int dev_set_name (TYPE_1__*,char*,scalar_t__) ;
 int device_register (TYPE_1__*) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct nvdimm_bus*) ;
 struct nvdimm_bus* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nd_ida ;
 int nvdimm_bus_release ;
 int nvdimm_bus_type ;
 int put_device (TYPE_1__*) ;

struct nvdimm_bus *nvdimm_bus_register(struct device *parent,
  struct nvdimm_bus_descriptor *nd_desc)
{
 struct nvdimm_bus *nvdimm_bus;
 int rc;

 nvdimm_bus = kzalloc(sizeof(*nvdimm_bus), GFP_KERNEL);
 if (!nvdimm_bus)
  return ((void*)0);
 INIT_LIST_HEAD(&nvdimm_bus->list);
 INIT_LIST_HEAD(&nvdimm_bus->mapping_list);
 init_waitqueue_head(&nvdimm_bus->wait);
 nvdimm_bus->id = ida_simple_get(&nd_ida, 0, 0, GFP_KERNEL);
 if (nvdimm_bus->id < 0) {
  kfree(nvdimm_bus);
  return ((void*)0);
 }
 mutex_init(&nvdimm_bus->reconfig_mutex);
 badrange_init(&nvdimm_bus->badrange);
 nvdimm_bus->nd_desc = nd_desc;
 nvdimm_bus->dev.parent = parent;
 nvdimm_bus->dev.release = nvdimm_bus_release;
 nvdimm_bus->dev.groups = nd_desc->attr_groups;
 nvdimm_bus->dev.bus = &nvdimm_bus_type;
 nvdimm_bus->dev.of_node = nd_desc->of_node;
 dev_set_name(&nvdimm_bus->dev, "ndbus%d", nvdimm_bus->id);
 rc = device_register(&nvdimm_bus->dev);
 if (rc) {
  dev_dbg(&nvdimm_bus->dev, "registration failed: %d\n", rc);
  goto err;
 }

 return nvdimm_bus;
 err:
 put_device(&nvdimm_bus->dev);
 return ((void*)0);
}
