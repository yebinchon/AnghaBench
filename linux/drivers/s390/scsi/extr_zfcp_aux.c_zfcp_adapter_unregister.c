
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {int qdio; int gs; int ns_up_work; int stat_work; int scan_work; struct ccw_device* ccw_device; } ;
struct TYPE_2__ {int kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int zfcp_ccw_adapter_put (struct zfcp_adapter*) ;
 int zfcp_dbf_adapter_unregister (struct zfcp_adapter*) ;
 int zfcp_destroy_adapter_work_queue (struct zfcp_adapter*) ;
 int zfcp_erp_thread_kill (struct zfcp_adapter*) ;
 int zfcp_fc_wka_ports_force_offline (int ) ;
 int zfcp_qdio_destroy (int ) ;
 int zfcp_scsi_adapter_unregister (struct zfcp_adapter*) ;
 int zfcp_sysfs_adapter_attrs ;

void zfcp_adapter_unregister(struct zfcp_adapter *adapter)
{
 struct ccw_device *cdev = adapter->ccw_device;

 cancel_delayed_work_sync(&adapter->scan_work);
 cancel_work_sync(&adapter->stat_work);
 cancel_work_sync(&adapter->ns_up_work);
 zfcp_destroy_adapter_work_queue(adapter);

 zfcp_fc_wka_ports_force_offline(adapter->gs);
 zfcp_scsi_adapter_unregister(adapter);
 sysfs_remove_group(&cdev->dev.kobj, &zfcp_sysfs_adapter_attrs);

 zfcp_erp_thread_kill(adapter);
 zfcp_dbf_adapter_unregister(adapter);
 zfcp_qdio_destroy(adapter->qdio);

 zfcp_ccw_adapter_put(adapter);
}
