
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct Scsi_Host* host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct aac_hba_map_info {scalar_t__ devtype; scalar_t__ reset_state; } ;
struct TYPE_2__ {int supported_options2; } ;
struct aac_dev {struct aac_hba_map_info** hba_map; TYPE_1__ supplement_adapter_info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int __le32 ;


 scalar_t__ AAC_DEVTYPE_NATIVE_RAW ;
 int AAC_MAX_BUSES ;
 int AAC_MAX_TARGETS ;
 int AAC_OPTION_DOORBELL_RESET ;
 int AAC_OPTION_IGNORE_RESET ;
 int AAC_OPTION_MU_RESET ;
 int FAILED ;
 int IOP_HWSOFT_RESET ;
 int SUCCESS ;
 int aac_check_reset ;
 scalar_t__ aac_reset_adapter (struct aac_dev*,int,int ) ;

int aac_eh_host_reset(struct scsi_cmnd *cmd)
{
 struct scsi_device * dev = cmd->device;
 struct Scsi_Host * host = dev->host;
 struct aac_dev * aac = (struct aac_dev *)host->hostdata;
 int ret = FAILED;
 __le32 supported_options2 = 0;
 bool is_mu_reset;
 bool is_ignore_reset;
 bool is_doorbell_reset;




 supported_options2 = aac->supplement_adapter_info.supported_options2;
 is_mu_reset = supported_options2 & AAC_OPTION_MU_RESET;
 is_doorbell_reset = supported_options2 & AAC_OPTION_DOORBELL_RESET;
 is_ignore_reset = supported_options2 & AAC_OPTION_IGNORE_RESET;





 if ((is_mu_reset || is_doorbell_reset)
  && aac_check_reset
  && (aac_check_reset != -1 || !is_ignore_reset)) {

  if (aac_reset_adapter(aac, 2, IOP_HWSOFT_RESET) == 0)
   ret = SUCCESS;
 }



 if (ret == SUCCESS) {
  int bus, cid;
  struct aac_hba_map_info *info;

  for (bus = 0; bus < AAC_MAX_BUSES; bus++) {
   for (cid = 0; cid < AAC_MAX_TARGETS; cid++) {
    info = &aac->hba_map[bus][cid];
    if (info->devtype == AAC_DEVTYPE_NATIVE_RAW)
     info->reset_state = 0;
   }
  }
 }
 return ret;
}
