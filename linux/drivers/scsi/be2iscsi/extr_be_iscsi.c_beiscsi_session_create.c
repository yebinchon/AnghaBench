
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct iscsi_session {struct beiscsi_session* dd_data; } ;
struct iscsi_endpoint {struct beiscsi_endpoint* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct beiscsi_session {int bhs_pool; } ;
struct beiscsi_io_task {int dummy; } ;
struct TYPE_3__ {scalar_t__ wrbs_per_cxn; } ;
struct beiscsi_hba {TYPE_2__* pcidev; struct Scsi_Host* shost; TYPE_1__ params; int state; } ;
struct beiscsi_endpoint {struct beiscsi_hba* phba; } ;
struct be_cmd_bhs {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int BEISCSI_LOG_CONFIG ;
 int ISCSI_MAX_TARGET ;
 int KERN_ERR ;
 int KERN_INFO ;
 int beiscsi_hba_is_online (struct beiscsi_hba*) ;
 int beiscsi_iscsi_transport ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 int dma_pool_create (char*,int *,int,int,int ) ;
 struct iscsi_cls_session* iscsi_session_setup (int *,struct Scsi_Host*,scalar_t__,int,int,int ,int ) ;
 int iscsi_session_teardown (struct iscsi_cls_session*) ;
 int pr_err (char*) ;

struct iscsi_cls_session *beiscsi_session_create(struct iscsi_endpoint *ep,
       u16 cmds_max,
       u16 qdepth,
       u32 initial_cmdsn)
{
 struct Scsi_Host *shost;
 struct beiscsi_endpoint *beiscsi_ep;
 struct iscsi_cls_session *cls_session;
 struct beiscsi_hba *phba;
 struct iscsi_session *sess;
 struct beiscsi_session *beiscsi_sess;
 struct beiscsi_io_task *io_task;


 if (!ep) {
  pr_err("beiscsi_session_create: invalid ep\n");
  return ((void*)0);
 }
 beiscsi_ep = ep->dd_data;
 phba = beiscsi_ep->phba;

 if (!beiscsi_hba_is_online(phba)) {
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
       "BS_%d : HBA in error 0x%lx\n", phba->state);
  return ((void*)0);
 }

 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BS_%d : In beiscsi_session_create\n");
 if (cmds_max > beiscsi_ep->phba->params.wrbs_per_cxn) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Cannot handle %d cmds."
       "Max cmds per session supported is %d. Using %d."
       "\n", cmds_max,
       beiscsi_ep->phba->params.wrbs_per_cxn,
       beiscsi_ep->phba->params.wrbs_per_cxn);

  cmds_max = beiscsi_ep->phba->params.wrbs_per_cxn;
 }

 shost = phba->shost;
 cls_session = iscsi_session_setup(&beiscsi_iscsi_transport,
       shost, cmds_max,
       sizeof(*beiscsi_sess),
       sizeof(*io_task),
       initial_cmdsn, ISCSI_MAX_TARGET);
 if (!cls_session)
  return ((void*)0);
 sess = cls_session->dd_data;
 beiscsi_sess = sess->dd_data;
 beiscsi_sess->bhs_pool = dma_pool_create("beiscsi_bhs_pool",
         &phba->pcidev->dev,
         sizeof(struct be_cmd_bhs),
         64, 0);
 if (!beiscsi_sess->bhs_pool)
  goto destroy_sess;

 return cls_session;
destroy_sess:
 iscsi_session_teardown(cls_session);
 return ((void*)0);
}
