
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zfcp_adapter {TYPE_1__* scsi_host; TYPE_4__* ccw_device; } ;
struct ccw_dev_id {int devno; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int max_id; int max_lun; int max_cmd_len; unsigned long* hostdata; int transportt; int unique_id; scalar_t__ max_channel; } ;


 int EIO ;
 int ccw_device_get_id (TYPE_4__*,struct ccw_dev_id*) ;
 int dev_err (int *,char*) ;
 scalar_t__ scsi_add_host (TYPE_1__*,int *) ;
 TYPE_1__* scsi_host_alloc (int *,int) ;
 int scsi_host_put (TYPE_1__*) ;
 int zfcp_scsi_host_template ;
 int zfcp_scsi_transport_template ;

int zfcp_scsi_adapter_register(struct zfcp_adapter *adapter)
{
 struct ccw_dev_id dev_id;

 if (adapter->scsi_host)
  return 0;

 ccw_device_get_id(adapter->ccw_device, &dev_id);

 adapter->scsi_host = scsi_host_alloc(&zfcp_scsi_host_template,
          sizeof (struct zfcp_adapter *));
 if (!adapter->scsi_host) {
  dev_err(&adapter->ccw_device->dev,
   "Registering the FCP device with the "
   "SCSI stack failed\n");
  return -EIO;
 }


 adapter->scsi_host->max_id = 511;
 adapter->scsi_host->max_lun = 0xFFFFFFFF;
 adapter->scsi_host->max_channel = 0;
 adapter->scsi_host->unique_id = dev_id.devno;
 adapter->scsi_host->max_cmd_len = 16;
 adapter->scsi_host->transportt = zfcp_scsi_transport_template;

 adapter->scsi_host->hostdata[0] = (unsigned long) adapter;

 if (scsi_add_host(adapter->scsi_host, &adapter->ccw_device->dev)) {
  scsi_host_put(adapter->scsi_host);
  return -EIO;
 }

 return 0;
}
