
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int lun; int id; TYPE_1__* host; } ;
struct DeviceCtlBlk {int dummy; } ;
struct AdapterCtlBlk {int dummy; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int adapter_remove_and_free_device (struct AdapterCtlBlk*,struct DeviceCtlBlk*) ;
 struct DeviceCtlBlk* find_dcb (struct AdapterCtlBlk*,int ,int ) ;

__attribute__((used)) static void dc395x_slave_destroy(struct scsi_device *scsi_device)
{
 struct AdapterCtlBlk *acb = (struct AdapterCtlBlk *)scsi_device->host->hostdata;
 struct DeviceCtlBlk *dcb = find_dcb(acb, scsi_device->id, scsi_device->lun);
 if (dcb)
  adapter_remove_and_free_device(acb, dcb);
}
