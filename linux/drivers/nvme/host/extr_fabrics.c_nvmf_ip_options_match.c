
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmf_ctrl_options {int mask; int host_traddr; int trsvcid; int traddr; } ;
struct nvme_ctrl {TYPE_1__* opts; } ;
struct TYPE_2__ {int mask; int host_traddr; int trsvcid; int traddr; } ;


 int NVMF_OPT_HOST_TRADDR ;
 int nvmf_ctlr_matches_baseopts (struct nvme_ctrl*,struct nvmf_ctrl_options*) ;
 scalar_t__ strcmp (int ,int ) ;

bool nvmf_ip_options_match(struct nvme_ctrl *ctrl,
  struct nvmf_ctrl_options *opts)
{
 if (!nvmf_ctlr_matches_baseopts(ctrl, opts) ||
     strcmp(opts->traddr, ctrl->opts->traddr) ||
     strcmp(opts->trsvcid, ctrl->opts->trsvcid))
  return 0;
 if ((opts->mask & NVMF_OPT_HOST_TRADDR) &&
     (ctrl->opts->mask & NVMF_OPT_HOST_TRADDR)) {
  if (strcmp(opts->host_traddr, ctrl->opts->host_traddr))
   return 0;
 } else if ((opts->mask & NVMF_OPT_HOST_TRADDR) ||
     (ctrl->opts->mask & NVMF_OPT_HOST_TRADDR)) {
  return 0;
 }

 return 1;
}
