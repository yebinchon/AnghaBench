
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvme_ns {int dummy; } ;
struct nvme_ctrl {int dummy; } ;
typedef int __le32 ;


 unsigned int DIV_ROUND_UP_ULL (int ,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NVME_IDENTIFY_DATA_SIZE ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 unsigned int le32_to_cpu (int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 struct nvme_ns* nvme_find_get_ns (struct nvme_ctrl*,unsigned int) ;
 int nvme_identify_ns_list (struct nvme_ctrl*,unsigned int,int *) ;
 int nvme_ns_remove (struct nvme_ns*) ;
 int nvme_put_ns (struct nvme_ns*) ;
 int nvme_remove_invalid_namespaces (struct nvme_ctrl*,unsigned int) ;
 int nvme_validate_ns (struct nvme_ctrl*,unsigned int) ;

__attribute__((used)) static int nvme_scan_ns_list(struct nvme_ctrl *ctrl, unsigned nn)
{
 struct nvme_ns *ns;
 __le32 *ns_list;
 unsigned i, j, nsid, prev = 0;
 unsigned num_lists = DIV_ROUND_UP_ULL((u64)nn, 1024);
 int ret = 0;

 ns_list = kzalloc(NVME_IDENTIFY_DATA_SIZE, GFP_KERNEL);
 if (!ns_list)
  return -ENOMEM;

 for (i = 0; i < num_lists; i++) {
  ret = nvme_identify_ns_list(ctrl, prev, ns_list);
  if (ret)
   goto free;

  for (j = 0; j < min(nn, 1024U); j++) {
   nsid = le32_to_cpu(ns_list[j]);
   if (!nsid)
    goto out;

   nvme_validate_ns(ctrl, nsid);

   while (++prev < nsid) {
    ns = nvme_find_get_ns(ctrl, prev);
    if (ns) {
     nvme_ns_remove(ns);
     nvme_put_ns(ns);
    }
   }
  }
  nn -= j;
 }
 out:
 nvme_remove_invalid_namespaces(ctrl, prev);
 free:
 kfree(ns_list);
 return ret;
}
