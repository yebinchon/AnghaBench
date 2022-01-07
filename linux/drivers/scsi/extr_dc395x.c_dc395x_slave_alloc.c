
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int lun; int id; TYPE_1__* host; } ;
struct DeviceCtlBlk {int dummy; } ;
struct AdapterCtlBlk {int dummy; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int ENOMEM ;
 int adapter_add_device (struct AdapterCtlBlk*,struct DeviceCtlBlk*) ;
 struct DeviceCtlBlk* device_alloc (struct AdapterCtlBlk*,int ,int ) ;

__attribute__((used)) static int dc395x_slave_alloc(struct scsi_device *scsi_device)
{
 struct AdapterCtlBlk *acb = (struct AdapterCtlBlk *)scsi_device->host->hostdata;
 struct DeviceCtlBlk *dcb;

 dcb = device_alloc(acb, scsi_device->id, scsi_device->lun);
 if (!dcb)
  return -ENOMEM;
 adapter_add_device(acb, dcb);

 return 0;
}
