
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct scsi_device {struct Scsi_Host* host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct fib {int dummy; } ;
struct aac_hba_map_info {scalar_t__ devtype; int reset_state; } ;
struct aac_dev {struct aac_hba_map_info** hba_map; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int fib_callback ;


 scalar_t__ AAC_DEVTYPE_NATIVE_RAW ;
 int AAC_DRIVERNAME ;
 size_t AAC_MAX_BUSES ;
 size_t AAC_MAX_TARGETS ;
 int FAILED ;
 int SUCCESS ;
 int aac_eh_tmf_hard_reset_fib (struct aac_hba_map_info*,struct fib*) ;
 struct fib* aac_fib_alloc (struct aac_dev*) ;
 int aac_hba_send (int ,struct fib*,int ,void*) ;
 size_t aac_logical_to_phys (int ) ;
 scalar_t__ aac_tmf_callback ;
 int msleep (int) ;
 int pr_err (char*,int ) ;
 int scmd_channel (struct scsi_cmnd*) ;
 size_t scmd_id (struct scsi_cmnd*) ;

__attribute__((used)) static int aac_eh_target_reset(struct scsi_cmnd *cmd)
{
 struct scsi_device * dev = cmd->device;
 struct Scsi_Host * host = dev->host;
 struct aac_dev * aac = (struct aac_dev *)host->hostdata;
 struct aac_hba_map_info *info;
 int count;
 u32 bus, cid;
 int ret = FAILED;
 struct fib *fib;
 int status;
 u8 command;

 bus = aac_logical_to_phys(scmd_channel(cmd));
 cid = scmd_id(cmd);

 if (bus >= AAC_MAX_BUSES || cid >= AAC_MAX_TARGETS)
  return FAILED;

 info = &aac->hba_map[bus][cid];

 if (info->devtype != AAC_DEVTYPE_NATIVE_RAW &&
     info->reset_state > 0)
  return FAILED;

 pr_err("%s: Host adapter reset request. SCSI hang ?\n",
        AAC_DRIVERNAME);

 fib = aac_fib_alloc(aac);
 if (!fib)
  return ret;



 command = aac_eh_tmf_hard_reset_fib(info, fib);

 info->reset_state = 2;

 status = aac_hba_send(command, fib,
         (fib_callback) aac_tmf_callback,
         (void *) info);


 for (count = 0; count < 15; ++count) {
  if (info->reset_state <= 0) {
   ret = info->reset_state == 0 ? SUCCESS : FAILED;
   break;
  }
  msleep(1000);
 }

 return ret;
}
