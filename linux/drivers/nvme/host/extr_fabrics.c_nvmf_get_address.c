
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {TYPE_1__* opts; } ;
struct TYPE_2__ {int mask; char* traddr; char* trsvcid; char* host_traddr; } ;


 int NVMF_OPT_HOST_TRADDR ;
 int NVMF_OPT_TRADDR ;
 int NVMF_OPT_TRSVCID ;
 scalar_t__ snprintf (char*,int,char*,...) ;

int nvmf_get_address(struct nvme_ctrl *ctrl, char *buf, int size)
{
 int len = 0;

 if (ctrl->opts->mask & NVMF_OPT_TRADDR)
  len += snprintf(buf, size, "traddr=%s", ctrl->opts->traddr);
 if (ctrl->opts->mask & NVMF_OPT_TRSVCID)
  len += snprintf(buf + len, size - len, "%strsvcid=%s",
    (len) ? "," : "", ctrl->opts->trsvcid);
 if (ctrl->opts->mask & NVMF_OPT_HOST_TRADDR)
  len += snprintf(buf + len, size - len, "%shost_traddr=%s",
    (len) ? "," : "", ctrl->opts->host_traddr);
 len += snprintf(buf + len, size - len, "\n");

 return len;
}
