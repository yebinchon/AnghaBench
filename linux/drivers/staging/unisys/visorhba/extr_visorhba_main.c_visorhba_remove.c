
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorhba_devdata {int debugfs_dir; int debugfs_info; int idr; int thread; struct Scsi_Host* scsihost; } ;
struct visor_device {int device; } ;
struct Scsi_Host {int dummy; } ;


 int debugfs_remove (int ) ;
 int debugfs_remove_recursive (int ) ;
 struct visorhba_devdata* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int idr_destroy (int *) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int visor_thread_stop (int ) ;

__attribute__((used)) static void visorhba_remove(struct visor_device *dev)
{
 struct visorhba_devdata *devdata = dev_get_drvdata(&dev->device);
 struct Scsi_Host *scsihost = ((void*)0);

 if (!devdata)
  return;

 scsihost = devdata->scsihost;
 visor_thread_stop(devdata->thread);
 scsi_remove_host(scsihost);
 scsi_host_put(scsihost);

 idr_destroy(&devdata->idr);

 dev_set_drvdata(&dev->device, ((void*)0));
 debugfs_remove(devdata->debugfs_info);
 debugfs_remove_recursive(devdata->debugfs_dir);
}
