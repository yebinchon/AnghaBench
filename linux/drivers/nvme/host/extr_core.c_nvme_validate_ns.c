
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns {scalar_t__ disk; } ;
struct nvme_ctrl {int dummy; } ;


 int nvme_alloc_ns (struct nvme_ctrl*,unsigned int) ;
 struct nvme_ns* nvme_find_get_ns (struct nvme_ctrl*,unsigned int) ;
 int nvme_ns_remove (struct nvme_ns*) ;
 int nvme_put_ns (struct nvme_ns*) ;
 scalar_t__ revalidate_disk (scalar_t__) ;

__attribute__((used)) static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
{
 struct nvme_ns *ns;

 ns = nvme_find_get_ns(ctrl, nsid);
 if (ns) {
  if (ns->disk && revalidate_disk(ns->disk))
   nvme_ns_remove(ns);
  nvme_put_ns(ns);
 } else
  nvme_alloc_ns(ctrl, nsid);
}
