
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* path; } ;
struct TYPE_2__ {int chpid; int cssid; } ;


 int CUIR_QUIESCE ;
 int CUIR_RESUME ;
 int clear_bit (int,unsigned long*) ;
 int ffs (unsigned long) ;
 int pr_info (char*,int ,int ) ;
 int pr_warn (char*,int ,int ) ;

__attribute__((used)) static void dasd_eckd_cuir_notify_user(struct dasd_device *device,
           unsigned long paths, int action)
{
 int pos;

 while (paths) {

  pos = 8 - ffs(paths);

  if (action == CUIR_QUIESCE)
   pr_warn("Service on the storage server caused path %x.%02x to go offline",
    device->path[pos].cssid,
    device->path[pos].chpid);
  else if (action == CUIR_RESUME)
   pr_info("Path %x.%02x is back online after service on the storage server",
    device->path[pos].cssid,
    device->path[pos].chpid);
  clear_bit(7 - pos, &paths);
 }
}
