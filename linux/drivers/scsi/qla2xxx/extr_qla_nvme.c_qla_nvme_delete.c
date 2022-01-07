
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int nvme_del_done; scalar_t__ nvme_local_port; } ;


 int CONFIG_NVME_FC ;
 int IS_ENABLED (int ) ;
 int init_completion (int *) ;
 int nvme_fc_unregister_localport (scalar_t__) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_log_info ;
 int wait_for_completion (int *) ;

void qla_nvme_delete(struct scsi_qla_host *vha)
{
 int nv_ret;

 if (!IS_ENABLED(CONFIG_NVME_FC))
  return;

 if (vha->nvme_local_port) {
  init_completion(&vha->nvme_del_done);
  ql_log(ql_log_info, vha, 0x2116,
   "unregister localport=%p\n",
   vha->nvme_local_port);
  nv_ret = nvme_fc_unregister_localport(vha->nvme_local_port);
  if (nv_ret)
   ql_log(ql_log_info, vha, 0x2115,
       "Unregister of localport failed\n");
  else
   wait_for_completion(&vha->nvme_del_done);
 }
}
