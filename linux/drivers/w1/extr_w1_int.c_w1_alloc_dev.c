
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int init_name; } ;
struct w1_master {int max_slave_count; int id; int slave_ttl; int seq; TYPE_1__ dev; struct device_driver* driver; int name; int list_mutex; int bus_mutex; int mutex; int async_list; int slist; int refcnt; int enable_pullup; int search_count; scalar_t__ initialized; scalar_t__ attempts; scalar_t__ slave_count; int owner; struct w1_bus_master* bus_master; } ;
struct w1_bus_master {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 int atomic_set (int *,int) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_register (TYPE_1__*) ;
 struct w1_master* kzalloc (int,int ) ;
 int memcpy (TYPE_1__*,struct device*,int) ;
 int mutex_init (int *) ;
 int pr_err (char*,int) ;
 int put_device (TYPE_1__*) ;
 int snprintf (int ,int,char*,int) ;
 int w1_enable_pullup ;
 int w1_search_count ;

__attribute__((used)) static struct w1_master *w1_alloc_dev(u32 id, int slave_count, int slave_ttl,
           struct device_driver *driver,
           struct device *device)
{
 struct w1_master *dev;
 int err;




 dev = kzalloc(sizeof(struct w1_master) + sizeof(struct w1_bus_master), GFP_KERNEL);
 if (!dev) {
  pr_err("Failed to allocate %zd bytes for new w1 device.\n",
   sizeof(struct w1_master));
  return ((void*)0);
 }


 dev->bus_master = (struct w1_bus_master *)(dev + 1);

 dev->owner = THIS_MODULE;
 dev->max_slave_count = slave_count;
 dev->slave_count = 0;
 dev->attempts = 0;
 dev->initialized = 0;
 dev->id = id;
 dev->slave_ttl = slave_ttl;
 dev->search_count = w1_search_count;
 dev->enable_pullup = w1_enable_pullup;




 atomic_set(&dev->refcnt, 2);

 INIT_LIST_HEAD(&dev->slist);
 INIT_LIST_HEAD(&dev->async_list);
 mutex_init(&dev->mutex);
 mutex_init(&dev->bus_mutex);
 mutex_init(&dev->list_mutex);

 memcpy(&dev->dev, device, sizeof(struct device));
 dev_set_name(&dev->dev, "w1_bus_master%u", dev->id);
 snprintf(dev->name, sizeof(dev->name), "w1_bus_master%u", dev->id);
 dev->dev.init_name = dev->name;

 dev->driver = driver;

 dev->seq = 1;

 err = device_register(&dev->dev);
 if (err) {
  pr_err("Failed to register master device. err=%d\n", err);
  put_device(&dev->dev);
  dev = ((void*)0);
 }

 return dev;
}
