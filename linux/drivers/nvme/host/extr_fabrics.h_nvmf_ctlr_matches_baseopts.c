
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid_t ;
struct nvmf_ctrl_options {TYPE_1__* host; int subsysnqn; } ;
struct nvme_ctrl {scalar_t__ state; TYPE_3__* opts; } ;
struct TYPE_6__ {TYPE_2__* host; int subsysnqn; } ;
struct TYPE_5__ {int id; int nqn; } ;
struct TYPE_4__ {int id; int nqn; } ;


 scalar_t__ NVME_CTRL_DEAD ;
 scalar_t__ NVME_CTRL_DELETING ;
 scalar_t__ memcmp (int *,int *,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static inline bool
nvmf_ctlr_matches_baseopts(struct nvme_ctrl *ctrl,
   struct nvmf_ctrl_options *opts)
{
 if (ctrl->state == NVME_CTRL_DELETING ||
     ctrl->state == NVME_CTRL_DEAD ||
     strcmp(opts->subsysnqn, ctrl->opts->subsysnqn) ||
     strcmp(opts->host->nqn, ctrl->opts->host->nqn) ||
     memcmp(&opts->host->id, &ctrl->opts->host->id, sizeof(uuid_t)))
  return 0;

 return 1;
}
