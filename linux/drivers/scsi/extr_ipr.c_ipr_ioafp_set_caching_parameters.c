
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cdb; } ;
struct ipr_ioarcb {TYPE_1__ cmd_pkt; } ;
struct ipr_ioa_cfg {TYPE_2__* vpd_cbs; } ;
struct ipr_inquiry_pageC4 {int* cache_cap; } ;
struct ipr_cmnd {int job_step_failed; int job_step; struct ipr_ioa_cfg* ioa_cfg; struct ipr_ioarcb ioarcb; } ;
struct TYPE_4__ {struct ipr_inquiry_pageC4 pageC4_data; } ;


 int ENTER ;
 int IPR_CAP_SYNC_CACHE ;
 int IPR_IOA_RES_HANDLE ;
 int IPR_IOA_SA_CHANGE_CACHE_PARAMS ;
 int IPR_RC_JOB_CONTINUE ;
 int IPR_RC_JOB_RETURN ;
 int IPR_SET_SUP_DEVICE_TIMEOUT ;
 int LEAVE ;
 int cpu_to_be32 (int ) ;
 int ipr_build_ioa_service_action (struct ipr_cmnd*,int ,int ) ;
 int ipr_do_req (struct ipr_cmnd*,int ,int ,int ) ;
 int ipr_ioa_service_action_failed ;
 int ipr_ioafp_query_ioa_cfg ;
 int ipr_reset_ioa_job ;
 int ipr_timeout ;

__attribute__((used)) static int ipr_ioafp_set_caching_parameters(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioarcb *ioarcb = &ipr_cmd->ioarcb;
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 struct ipr_inquiry_pageC4 *pageC4 = &ioa_cfg->vpd_cbs->pageC4_data;

 ENTER;

 ipr_cmd->job_step = ipr_ioafp_query_ioa_cfg;

 if (pageC4->cache_cap[0] & IPR_CAP_SYNC_CACHE) {
  ipr_build_ioa_service_action(ipr_cmd,
          cpu_to_be32(IPR_IOA_RES_HANDLE),
          IPR_IOA_SA_CHANGE_CACHE_PARAMS);

  ioarcb->cmd_pkt.cdb[2] = 0x40;

  ipr_cmd->job_step_failed = ipr_ioa_service_action_failed;
  ipr_do_req(ipr_cmd, ipr_reset_ioa_job, ipr_timeout,
      IPR_SET_SUP_DEVICE_TIMEOUT);

  LEAVE;
  return IPR_RC_JOB_RETURN;
 }

 LEAVE;
 return IPR_RC_JOB_CONTINUE;
}
