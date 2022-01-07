
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DeviceCtlBlk {int sync_offset; int sync_period; int target_id; } ;
struct AdapterCtlBlk {int dummy; } ;


 int DC395x_write8 (struct AdapterCtlBlk*,int ,int ) ;
 int TRM_S1040_SCSI_OFFSET ;
 int TRM_S1040_SCSI_SYNC ;
 int TRM_S1040_SCSI_TARGETID ;
 int set_xfer_rate (struct AdapterCtlBlk*,struct DeviceCtlBlk*) ;

__attribute__((used)) static inline void reprogram_regs(struct AdapterCtlBlk *acb,
  struct DeviceCtlBlk *dcb)
{
 DC395x_write8(acb, TRM_S1040_SCSI_TARGETID, dcb->target_id);
 DC395x_write8(acb, TRM_S1040_SCSI_SYNC, dcb->sync_period);
 DC395x_write8(acb, TRM_S1040_SCSI_OFFSET, dcb->sync_offset);
 set_xfer_rate(acb, dcb);
}
