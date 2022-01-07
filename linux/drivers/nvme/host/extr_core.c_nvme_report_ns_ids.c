
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns_ids {int nguid; int eui64; } ;
struct nvme_id_ns {int nguid; int eui64; } ;
struct nvme_ctrl {scalar_t__ vs; int device; } ;


 scalar_t__ NVME_VS (int,int,int ) ;
 int dev_warn (int ,char*,int) ;
 int memcpy (int ,int ,int) ;
 int memset (struct nvme_ns_ids*,int ,int) ;
 int nvme_identify_ns_descs (struct nvme_ctrl*,unsigned int,struct nvme_ns_ids*) ;

__attribute__((used)) static int nvme_report_ns_ids(struct nvme_ctrl *ctrl, unsigned int nsid,
  struct nvme_id_ns *id, struct nvme_ns_ids *ids)
{
 int ret = 0;

 memset(ids, 0, sizeof(*ids));

 if (ctrl->vs >= NVME_VS(1, 1, 0))
  memcpy(ids->eui64, id->eui64, sizeof(id->eui64));
 if (ctrl->vs >= NVME_VS(1, 2, 0))
  memcpy(ids->nguid, id->nguid, sizeof(id->nguid));
 if (ctrl->vs >= NVME_VS(1, 3, 0)) {



  ret = nvme_identify_ns_descs(ctrl, nsid, ids);
  if (ret)
   dev_warn(ctrl->device,
     "Identify Descriptors failed (%d)\n", ret);
 }
 return ret;
}
