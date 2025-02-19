
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct zfcp_unit {int dev; } ;
struct TYPE_13__ {int min; } ;
struct TYPE_24__ {int min; } ;
struct TYPE_14__ {TYPE_10__ fabric; TYPE_9__ channel; } ;
struct TYPE_22__ {int min; } ;
struct TYPE_21__ {int min; } ;
struct TYPE_23__ {TYPE_7__ fabric; TYPE_6__ channel; } ;
struct TYPE_19__ {int min; } ;
struct TYPE_18__ {int min; } ;
struct TYPE_20__ {TYPE_4__ fabric; TYPE_3__ channel; } ;
struct TYPE_15__ {int lock; TYPE_11__ cmd; TYPE_8__ read; TYPE_5__ write; } ;
struct TYPE_17__ {struct zfcp_port* port; struct scsi_device* sdev; struct zfcp_adapter* adapter; } ;
struct zfcp_scsi_dev {TYPE_12__ latencies; struct zfcp_port* port; TYPE_2__ erp_action; } ;
struct zfcp_port {int adapter; int dev; } ;
struct zfcp_adapter {int connection_features; } ;
struct scsi_device {TYPE_1__* host; } ;
struct fc_rport {int port_name; } ;
struct TYPE_16__ {scalar_t__* hostdata; } ;


 int ENXIO ;
 int FSF_FEATURE_NPIV_MODE ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 scalar_t__ allow_lun_scan ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int scsi_target (struct scsi_device*) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int spin_lock_init (int *) ;
 struct fc_rport* starget_to_rport (int ) ;
 int zfcp_erp_lun_reopen (struct scsi_device*,int ,char*) ;
 int zfcp_erp_set_lun_status (struct scsi_device*,int ) ;
 int zfcp_erp_wait (int ) ;
 struct zfcp_port* zfcp_get_port_by_wwpn (struct zfcp_adapter*,int ) ;
 int zfcp_scsi_dev_lun (struct scsi_device*) ;
 scalar_t__ zfcp_sysfs_port_is_removing (struct zfcp_port*) ;
 int zfcp_sysfs_port_units_mutex ;
 struct zfcp_unit* zfcp_unit_find (struct zfcp_port*,int ) ;

__attribute__((used)) static int zfcp_scsi_slave_alloc(struct scsi_device *sdev)
{
 struct fc_rport *rport = starget_to_rport(scsi_target(sdev));
 struct zfcp_adapter *adapter =
  (struct zfcp_adapter *) sdev->host->hostdata[0];
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);
 struct zfcp_port *port;
 struct zfcp_unit *unit;
 int npiv = adapter->connection_features & FSF_FEATURE_NPIV_MODE;

 zfcp_sdev->erp_action.adapter = adapter;
 zfcp_sdev->erp_action.sdev = sdev;

 port = zfcp_get_port_by_wwpn(adapter, rport->port_name);
 if (!port)
  return -ENXIO;

 zfcp_sdev->erp_action.port = port;

 mutex_lock(&zfcp_sysfs_port_units_mutex);
 if (zfcp_sysfs_port_is_removing(port)) {

  mutex_unlock(&zfcp_sysfs_port_units_mutex);
  put_device(&port->dev);
  return -ENXIO;
 }
 mutex_unlock(&zfcp_sysfs_port_units_mutex);

 unit = zfcp_unit_find(port, zfcp_scsi_dev_lun(sdev));
 if (unit)
  put_device(&unit->dev);

 if (!unit && !(allow_lun_scan && npiv)) {
  put_device(&port->dev);
  return -ENXIO;
 }

 zfcp_sdev->port = port;
 zfcp_sdev->latencies.write.channel.min = 0xFFFFFFFF;
 zfcp_sdev->latencies.write.fabric.min = 0xFFFFFFFF;
 zfcp_sdev->latencies.read.channel.min = 0xFFFFFFFF;
 zfcp_sdev->latencies.read.fabric.min = 0xFFFFFFFF;
 zfcp_sdev->latencies.cmd.channel.min = 0xFFFFFFFF;
 zfcp_sdev->latencies.cmd.fabric.min = 0xFFFFFFFF;
 spin_lock_init(&zfcp_sdev->latencies.lock);

 zfcp_erp_set_lun_status(sdev, ZFCP_STATUS_COMMON_RUNNING);
 zfcp_erp_lun_reopen(sdev, 0, "scsla_1");
 zfcp_erp_wait(port->adapter);

 return 0;
}
