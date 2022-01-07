
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int groups; int of_node; TYPE_3__* parent; int * bus; int * type; } ;
struct nvmem_device {int id; int stride; int word_size; int read_only; TYPE_2__ dev; int reg_write; int reg_read; int type; int priv; int size; scalar_t__ owner; int cells; int refcnt; } ;
struct nvmem_config {int id; scalar_t__ compat; int ncells; int cells; scalar_t__ name; scalar_t__ read_only; TYPE_3__* dev; int no_of_node; int reg_write; int reg_read; int type; int priv; int size; scalar_t__ word_size; scalar_t__ stride; scalar_t__ owner; } ;
struct TYPE_11__ {int of_node; TYPE_1__* driver; } ;
struct TYPE_9__ {scalar_t__ owner; } ;


 int EINVAL ;
 int ENOMEM ;
 struct nvmem_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NVMEM_ADD ;
 int blocking_notifier_call_chain (int *,int ,struct nvmem_device*) ;
 int dev_dbg (TYPE_2__*,char*,scalar_t__) ;
 int dev_set_name (TYPE_2__*,char*,char*,...) ;
 int device_add (TYPE_2__*) ;
 int device_del (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 scalar_t__ device_property_present (TYPE_3__*,char*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct nvmem_device*) ;
 int kref_init (int *) ;
 struct nvmem_device* kzalloc (int,int ) ;
 int nvmem_add_cells (struct nvmem_device*,int ,int ) ;
 int nvmem_add_cells_from_of (struct nvmem_device*) ;
 int nvmem_add_cells_from_table (struct nvmem_device*) ;
 int nvmem_bus_type ;
 int nvmem_device_remove_all_cells (struct nvmem_device*) ;
 int nvmem_ida ;
 int nvmem_notifier ;
 int nvmem_provider_type ;
 int nvmem_sysfs_get_groups (struct nvmem_device*,struct nvmem_config const*) ;
 int nvmem_sysfs_remove_compat (struct nvmem_device*,struct nvmem_config const*) ;
 int nvmem_sysfs_setup_compat (struct nvmem_device*,struct nvmem_config const*) ;
 int put_device (TYPE_2__*) ;

struct nvmem_device *nvmem_register(const struct nvmem_config *config)
{
 struct nvmem_device *nvmem;
 int rval;

 if (!config->dev)
  return ERR_PTR(-EINVAL);

 nvmem = kzalloc(sizeof(*nvmem), GFP_KERNEL);
 if (!nvmem)
  return ERR_PTR(-ENOMEM);

 rval = ida_simple_get(&nvmem_ida, 0, 0, GFP_KERNEL);
 if (rval < 0) {
  kfree(nvmem);
  return ERR_PTR(rval);
 }

 kref_init(&nvmem->refcnt);
 INIT_LIST_HEAD(&nvmem->cells);

 nvmem->id = rval;
 nvmem->owner = config->owner;
 if (!nvmem->owner && config->dev->driver)
  nvmem->owner = config->dev->driver->owner;
 nvmem->stride = config->stride ?: 1;
 nvmem->word_size = config->word_size ?: 1;
 nvmem->size = config->size;
 nvmem->dev.type = &nvmem_provider_type;
 nvmem->dev.bus = &nvmem_bus_type;
 nvmem->dev.parent = config->dev;
 nvmem->priv = config->priv;
 nvmem->type = config->type;
 nvmem->reg_read = config->reg_read;
 nvmem->reg_write = config->reg_write;
 if (!config->no_of_node)
  nvmem->dev.of_node = config->dev->of_node;

 if (config->id == -1 && config->name) {
  dev_set_name(&nvmem->dev, "%s", config->name);
 } else {
  dev_set_name(&nvmem->dev, "%s%d",
        config->name ? : "nvmem",
        config->name ? config->id : nvmem->id);
 }

 nvmem->read_only = device_property_present(config->dev, "read-only") ||
      config->read_only || !nvmem->reg_write;

 nvmem->dev.groups = nvmem_sysfs_get_groups(nvmem, config);

 device_initialize(&nvmem->dev);

 dev_dbg(&nvmem->dev, "Registering nvmem device %s\n", config->name);

 rval = device_add(&nvmem->dev);
 if (rval)
  goto err_put_device;

 if (config->compat) {
  rval = nvmem_sysfs_setup_compat(nvmem, config);
  if (rval)
   goto err_device_del;
 }

 if (config->cells) {
  rval = nvmem_add_cells(nvmem, config->cells, config->ncells);
  if (rval)
   goto err_teardown_compat;
 }

 rval = nvmem_add_cells_from_table(nvmem);
 if (rval)
  goto err_remove_cells;

 rval = nvmem_add_cells_from_of(nvmem);
 if (rval)
  goto err_remove_cells;

 blocking_notifier_call_chain(&nvmem_notifier, NVMEM_ADD, nvmem);

 return nvmem;

err_remove_cells:
 nvmem_device_remove_all_cells(nvmem);
err_teardown_compat:
 if (config->compat)
  nvmem_sysfs_remove_compat(nvmem, config);
err_device_del:
 device_del(&nvmem->dev);
err_put_device:
 put_device(&nvmem->dev);

 return ERR_PTR(rval);
}
