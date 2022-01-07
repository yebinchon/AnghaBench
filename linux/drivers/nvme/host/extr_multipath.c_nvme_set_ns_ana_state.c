
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns {scalar_t__ ana_grpid; } ;
struct nvme_ctrl {int dummy; } ;
struct nvme_ana_group_desc {int grpid; } ;


 int ENXIO ;
 scalar_t__ le32_to_cpu (int ) ;
 int nvme_update_ns_ana_state (struct nvme_ana_group_desc*,struct nvme_ns*) ;

__attribute__((used)) static int nvme_set_ns_ana_state(struct nvme_ctrl *ctrl,
  struct nvme_ana_group_desc *desc, void *data)
{
 struct nvme_ns *ns = data;

 if (ns->ana_grpid == le32_to_cpu(desc->grpid)) {
  nvme_update_ns_ana_state(desc, ns);
  return -ENXIO;
 }

 return 0;
}
