
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {int nr_reconnects; TYPE_1__* opts; } ;
struct TYPE_2__ {int max_reconnects; } ;



bool nvmf_should_reconnect(struct nvme_ctrl *ctrl)
{
 if (ctrl->opts->max_reconnects == -1 ||
     ctrl->nr_reconnects < ctrl->opts->max_reconnects)
  return 1;

 return 0;
}
