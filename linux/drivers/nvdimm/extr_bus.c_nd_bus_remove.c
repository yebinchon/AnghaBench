
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int list; } ;
struct nvdimm_bus {TYPE_1__ badrange; int dev; int ioctl_active; int wait; int list; } ;
struct device {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int child_unregister ;
 int device_for_each_child (int *,int *,int ) ;
 int free_badrange_list (int *) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nd_synchronize () ;
 int nvdimm_bus_destroy_ndctl (struct nvdimm_bus*) ;
 int nvdimm_bus_list_mutex ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct nvdimm_bus* to_nvdimm_bus (struct device*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int nd_bus_remove(struct device *dev)
{
 struct nvdimm_bus *nvdimm_bus = to_nvdimm_bus(dev);

 mutex_lock(&nvdimm_bus_list_mutex);
 list_del_init(&nvdimm_bus->list);
 mutex_unlock(&nvdimm_bus_list_mutex);

 wait_event(nvdimm_bus->wait,
   atomic_read(&nvdimm_bus->ioctl_active) == 0);

 nd_synchronize();
 device_for_each_child(&nvdimm_bus->dev, ((void*)0), child_unregister);

 spin_lock(&nvdimm_bus->badrange.lock);
 free_badrange_list(&nvdimm_bus->badrange.list);
 spin_unlock(&nvdimm_bus->badrange.lock);

 nvdimm_bus_destroy_ndctl(nvdimm_bus);

 return 0;
}
