
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_host_info {int dev_info_list; } ;
struct sdebug_dev_info {void* lu_name; int dev_list; struct sdebug_host_info* sdbg_host; } ;
typedef int gfp_t ;


 int got_shared_uuid ;
 struct sdebug_dev_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sdebug_uuid_ctl ;
 void* shared_uuid ;
 int uuid_gen (void**) ;

__attribute__((used)) static struct sdebug_dev_info *sdebug_device_create(
   struct sdebug_host_info *sdbg_host, gfp_t flags)
{
 struct sdebug_dev_info *devip;

 devip = kzalloc(sizeof(*devip), flags);
 if (devip) {
  if (sdebug_uuid_ctl == 1)
   uuid_gen(&devip->lu_name);
  else if (sdebug_uuid_ctl == 2) {
   if (got_shared_uuid)
    devip->lu_name = shared_uuid;
   else {
    uuid_gen(&shared_uuid);
    got_shared_uuid = 1;
    devip->lu_name = shared_uuid;
   }
  }
  devip->sdbg_host = sdbg_host;
  list_add_tail(&devip->dev_list, &sdbg_host->dev_info_list);
 }
 return devip;
}
