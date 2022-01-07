
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ScsiInqData {int DevType; } ;
struct DeviceCtlBlk {int dev_type; } ;
struct AdapterCtlBlk {int dummy; } ;


 int SCSI_DEVTYPE ;
 int disc_tagq_set (struct DeviceCtlBlk*,struct ScsiInqData*) ;

__attribute__((used)) static void add_dev(struct AdapterCtlBlk *acb, struct DeviceCtlBlk *dcb,
  struct ScsiInqData *ptr)
{
 u8 bval1 = ptr->DevType & SCSI_DEVTYPE;
 dcb->dev_type = bval1;

 disc_tagq_set(dcb, ptr);
}
