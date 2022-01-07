
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;


 int nvme_remove_invalid_namespaces (struct nvme_ctrl*,unsigned int) ;
 int nvme_validate_ns (struct nvme_ctrl*,unsigned int) ;

__attribute__((used)) static void nvme_scan_ns_sequential(struct nvme_ctrl *ctrl, unsigned nn)
{
 unsigned i;

 for (i = 1; i <= nn; i++)
  nvme_validate_ns(ctrl, i);

 nvme_remove_invalid_namespaces(ctrl, nn);
}
