
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sdw_slave_id {int unique_id; int class_id; int part_id; int mfg_id; } ;
struct TYPE_4__ {int of_node; int * bus; int release; struct fwnode_handle* fwnode; int parent; } ;
struct sdw_slave {TYPE_1__ dev; int node; scalar_t__ dev_num; int status; struct sdw_bus* bus; int id; } ;
struct sdw_bus {int bus_lock; int dev; int slaves; int link_id; } ;
struct fwnode_handle {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SDW_SLAVE_UNATTACHED ;
 int dev_err (int ,char*,int) ;
 int dev_set_name (TYPE_1__*,char*,int ,int ,int ,int ,int ) ;
 int device_register (TYPE_1__*) ;
 struct sdw_slave* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memcpy (int *,struct sdw_slave_id*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_node_get (int ) ;
 int put_device (TYPE_1__*) ;
 int sdw_bus_type ;
 int sdw_slave_debugfs_init (struct sdw_slave*) ;
 int sdw_slave_release ;
 int to_of_node (struct fwnode_handle*) ;

__attribute__((used)) static int sdw_slave_add(struct sdw_bus *bus,
    struct sdw_slave_id *id, struct fwnode_handle *fwnode)
{
 struct sdw_slave *slave;
 int ret;

 slave = kzalloc(sizeof(*slave), GFP_KERNEL);
 if (!slave)
  return -ENOMEM;


 memcpy(&slave->id, id, sizeof(*id));
 slave->dev.parent = bus->dev;
 slave->dev.fwnode = fwnode;


 dev_set_name(&slave->dev, "sdw:%x:%x:%x:%x:%x",
       bus->link_id, id->mfg_id, id->part_id,
       id->class_id, id->unique_id);

 slave->dev.release = sdw_slave_release;
 slave->dev.bus = &sdw_bus_type;
 slave->dev.of_node = of_node_get(to_of_node(fwnode));
 slave->bus = bus;
 slave->status = SDW_SLAVE_UNATTACHED;
 slave->dev_num = 0;

 mutex_lock(&bus->bus_lock);
 list_add_tail(&slave->node, &bus->slaves);
 mutex_unlock(&bus->bus_lock);

 ret = device_register(&slave->dev);
 if (ret) {
  dev_err(bus->dev, "Failed to add slave: ret %d\n", ret);





  mutex_lock(&bus->bus_lock);
  list_del(&slave->node);
  mutex_unlock(&bus->bus_lock);
  put_device(&slave->dev);
 }
 sdw_slave_debugfs_init(slave);

 return ret;
}
