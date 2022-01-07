
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct MPT3SAS_ADAPTER {scalar_t__ remove_host; scalar_t__ is_driver_loading; } ;
struct TYPE_2__ {int host; } ;


 int FAILED ;
 int FORCE_BIG_HAMMER ;
 int SUCCESS ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,...) ;
 int mpt3sas_base_hard_reset_handler (struct MPT3SAS_ADAPTER*,int ) ;
 int scsi_print_command (struct scsi_cmnd*) ;
 struct MPT3SAS_ADAPTER* shost_priv (int ) ;

__attribute__((used)) static int
scsih_host_reset(struct scsi_cmnd *scmd)
{
 struct MPT3SAS_ADAPTER *ioc = shost_priv(scmd->device->host);
 int r, retval;

 ioc_info(ioc, "attempting host reset! scmd(%p)\n", scmd);
 scsi_print_command(scmd);

 if (ioc->is_driver_loading || ioc->remove_host) {
  ioc_info(ioc, "Blocking the host reset\n");
  r = FAILED;
  goto out;
 }

 retval = mpt3sas_base_hard_reset_handler(ioc, FORCE_BIG_HAMMER);
 r = (retval < 0) ? FAILED : SUCCESS;
out:
 ioc_info(ioc, "host reset: %s scmd(%p)\n",
   r == SUCCESS ? "SUCCESS" : "FAILED", scmd);

 return r;
}
