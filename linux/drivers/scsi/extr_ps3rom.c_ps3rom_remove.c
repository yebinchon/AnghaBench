
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_system_bus_device {int core; } ;
struct ps3_storage_device {int bounce_buf; int sbd; } ;
struct Scsi_Host {int dummy; } ;


 int kfree (int ) ;
 struct Scsi_Host* ps3_system_bus_get_drvdata (int *) ;
 int ps3_system_bus_set_drvdata (int *,int *) ;
 int ps3stor_teardown (struct ps3_storage_device*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct ps3_storage_device* to_ps3_storage_device (int *) ;

__attribute__((used)) static int ps3rom_remove(struct ps3_system_bus_device *_dev)
{
 struct ps3_storage_device *dev = to_ps3_storage_device(&_dev->core);
 struct Scsi_Host *host = ps3_system_bus_get_drvdata(&dev->sbd);

 scsi_remove_host(host);
 ps3stor_teardown(dev);
 scsi_host_put(host);
 ps3_system_bus_set_drvdata(&dev->sbd, ((void*)0));
 kfree(dev->bounce_buf);
 return 0;
}
