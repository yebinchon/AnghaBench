
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_subsystem {int subnqn; } ;
struct nvme_id_ctrl {int mn; int sn; int vid; int ssvid; int subnqn; } ;
struct nvme_ctrl {int quirks; scalar_t__ vs; int device; } ;


 int NVME_QUIRK_IGNORE_DEV_SUBNQN ;
 scalar_t__ NVME_VS (int,int,int) ;
 size_t NVMF_NQN_SIZE ;
 int dev_warn (int ,char*) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int snprintf (int ,size_t,char*,int,int) ;
 int strlcpy (int ,int ,size_t) ;
 size_t strnlen (int ,size_t) ;

__attribute__((used)) static void nvme_init_subnqn(struct nvme_subsystem *subsys, struct nvme_ctrl *ctrl,
  struct nvme_id_ctrl *id)
{
 size_t nqnlen;
 int off;

 if(!(ctrl->quirks & NVME_QUIRK_IGNORE_DEV_SUBNQN)) {
  nqnlen = strnlen(id->subnqn, NVMF_NQN_SIZE);
  if (nqnlen > 0 && nqnlen < NVMF_NQN_SIZE) {
   strlcpy(subsys->subnqn, id->subnqn, NVMF_NQN_SIZE);
   return;
  }

  if (ctrl->vs >= NVME_VS(1, 2, 1))
   dev_warn(ctrl->device, "missing or invalid SUBNQN field.\n");
 }


 off = snprintf(subsys->subnqn, NVMF_NQN_SIZE,
   "nqn.2014.08.org.nvmexpress:%04x%04x",
   le16_to_cpu(id->vid), le16_to_cpu(id->ssvid));
 memcpy(subsys->subnqn + off, id->sn, sizeof(id->sn));
 off += sizeof(id->sn);
 memcpy(subsys->subnqn + off, id->mn, sizeof(id->mn));
 off += sizeof(id->mn);
 memset(subsys->subnqn + off, 0, sizeof(subsys->subnqn) - off);
}
