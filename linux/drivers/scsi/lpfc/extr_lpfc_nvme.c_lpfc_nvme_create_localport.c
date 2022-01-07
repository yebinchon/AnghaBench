
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct nvme_fc_port_info {void* port_name; void* node_name; int port_role; } ;
struct nvme_fc_local_port {scalar_t__ private; int port_num; } ;
struct TYPE_11__ {int wwn; } ;
struct TYPE_12__ {TYPE_3__ u; } ;
struct TYPE_9__ {int wwn; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
struct lpfc_vport {int nvmei_support; struct nvme_fc_local_port* localport; struct lpfc_hba* phba; TYPE_4__ fc_portname; TYPE_2__ fc_nodename; } ;
struct lpfc_nvme_lport {int fc4NvmeLsCmpls; int fc4NvmeLsRequests; int cmpl_ls_err; int cmpl_ls_xb; int cmpl_fcp_err; int cmpl_fcp_xb; int xmt_ls_err; int xmt_ls_abort; int xmt_fcp_abort; int xmt_fcp_wqerr; int xmt_fcp_err; int xmt_fcp_qdepth; int xmt_fcp_bad_ndlp; int xmt_fcp_noxri; struct lpfc_vport* vport; } ;
struct TYPE_13__ {int num_present_cpu; } ;
struct lpfc_hba {scalar_t__ cfg_fcp_io_sched; TYPE_6__* pcidev; TYPE_5__ sli4_hba; int cfg_hdw_queue; scalar_t__ cfg_nvme_seg_cnt; } ;
struct TYPE_15__ {scalar_t__ max_sgl_segments; int max_hw_queues; } ;
struct TYPE_14__ {int dev; } ;


 int CONFIG_NVME_FC ;
 int FC_PORT_ROLE_NVME_INITIATOR ;
 int IS_ENABLED (int ) ;
 int KERN_INFO ;
 int LOG_NVME ;
 int LOG_NVME_DISC ;
 scalar_t__ LPFC_FCP_SCHED_BY_HDWQ ;
 int atomic_set (int *,int ) ;
 TYPE_7__ lpfc_nvme_template ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*,int ,struct nvme_fc_local_port*,scalar_t__,scalar_t__) ;
 int memset (struct nvme_fc_port_info*,int ,int) ;
 int nvme_fc_register_localport (struct nvme_fc_port_info*,TYPE_7__*,int *,struct nvme_fc_local_port**) ;
 void* wwn_to_u64 (int ) ;

int
lpfc_nvme_create_localport(struct lpfc_vport *vport)
{
 int ret = 0;
 struct lpfc_hba *phba = vport->phba;
 struct nvme_fc_port_info nfcp_info;
 struct nvme_fc_local_port *localport;
 struct lpfc_nvme_lport *lport;




 memset(&nfcp_info, 0, sizeof(struct nvme_fc_port_info));
 nfcp_info.port_role = FC_PORT_ROLE_NVME_INITIATOR;
 nfcp_info.node_name = wwn_to_u64(vport->fc_nodename.u.wwn);
 nfcp_info.port_name = wwn_to_u64(vport->fc_portname.u.wwn);





 lpfc_nvme_template.max_sgl_segments = phba->cfg_nvme_seg_cnt + 1;


 if (phba->cfg_fcp_io_sched == LPFC_FCP_SCHED_BY_HDWQ)
  lpfc_nvme_template.max_hw_queues = phba->cfg_hdw_queue;
 else
  lpfc_nvme_template.max_hw_queues =
   phba->sli4_hba.num_present_cpu;

 if (!IS_ENABLED(CONFIG_NVME_FC))
  return ret;





 ret = nvme_fc_register_localport(&nfcp_info, &lpfc_nvme_template,
      &vport->phba->pcidev->dev, &localport);
 if (!ret) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME | LOG_NVME_DISC,
     "6005 Successfully registered local "
     "NVME port num %d, localP x%px, private "
     "x%px, sg_seg %d\n",
     localport->port_num, localport,
     localport->private,
     lpfc_nvme_template.max_sgl_segments);


  lport = (struct lpfc_nvme_lport *)localport->private;
  vport->localport = localport;
  lport->vport = vport;
  vport->nvmei_support = 1;

  atomic_set(&lport->xmt_fcp_noxri, 0);
  atomic_set(&lport->xmt_fcp_bad_ndlp, 0);
  atomic_set(&lport->xmt_fcp_qdepth, 0);
  atomic_set(&lport->xmt_fcp_err, 0);
  atomic_set(&lport->xmt_fcp_wqerr, 0);
  atomic_set(&lport->xmt_fcp_abort, 0);
  atomic_set(&lport->xmt_ls_abort, 0);
  atomic_set(&lport->xmt_ls_err, 0);
  atomic_set(&lport->cmpl_fcp_xb, 0);
  atomic_set(&lport->cmpl_fcp_err, 0);
  atomic_set(&lport->cmpl_ls_xb, 0);
  atomic_set(&lport->cmpl_ls_err, 0);
  atomic_set(&lport->fc4NvmeLsRequests, 0);
  atomic_set(&lport->fc4NvmeLsCmpls, 0);
 }

 return ret;
}
