
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device_specify {int unit; int port; } ;
struct maple_device {int busy; int port; } ;


 int MAPLE_COMMAND_DEVINFO ;
 int atomic_set (int *,int) ;
 int bus_for_each_dev (int *,int *,struct maple_device_specify*,int ) ;
 int check_maple_device ;
 int maple_add_packet (struct maple_device*,int ,int ,int ,int *) ;
 struct maple_device* maple_alloc_dev (int ,int) ;
 int maple_bus_type ;
 int scanning ;

__attribute__((used)) static void maple_map_subunits(struct maple_device *mdev, int submask)
{
 int retval, k, devcheck;
 struct maple_device *mdev_add;
 struct maple_device_specify ds;

 ds.port = mdev->port;
 for (k = 0; k < 5; k++) {
  ds.unit = k + 1;
  retval =
      bus_for_each_dev(&maple_bus_type, ((void*)0), &ds,
         check_maple_device);
  if (retval) {
   submask = submask >> 1;
   continue;
  }
  devcheck = submask & 0x01;
  if (devcheck) {
   mdev_add = maple_alloc_dev(mdev->port, k + 1);
   if (!mdev_add)
    return;
   atomic_set(&mdev_add->busy, 1);
   maple_add_packet(mdev_add, 0, MAPLE_COMMAND_DEVINFO,
    0, ((void*)0));

   scanning = 1;
  }
  submask = submask >> 1;
 }
}
