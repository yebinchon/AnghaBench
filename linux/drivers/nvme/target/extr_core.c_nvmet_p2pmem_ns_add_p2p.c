
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nvmet_ns {int nsid; int device_path; scalar_t__ p2p_dev; int use_p2pmem; } ;
struct nvmet_ctrl {int p2p_ns_map; struct device* p2p_client; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct device**) ;
 int dev_name (struct device*) ;
 struct device* nvmet_ns_dev (struct nvmet_ns*) ;
 struct pci_dev* pci_dev_get (scalar_t__) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_p2pdma_distance (scalar_t__,struct device*,int) ;
 struct pci_dev* pci_p2pmem_find_many (struct device**,int ) ;
 int pr_err (char*,int ,int ) ;
 int pr_info (char*,int ,int ) ;
 int radix_tree_insert (int *,int ,struct pci_dev*) ;

__attribute__((used)) static void nvmet_p2pmem_ns_add_p2p(struct nvmet_ctrl *ctrl,
        struct nvmet_ns *ns)
{
 struct device *clients[2];
 struct pci_dev *p2p_dev;
 int ret;

 if (!ctrl->p2p_client || !ns->use_p2pmem)
  return;

 if (ns->p2p_dev) {
  ret = pci_p2pdma_distance(ns->p2p_dev, ctrl->p2p_client, 1);
  if (ret < 0)
   return;

  p2p_dev = pci_dev_get(ns->p2p_dev);
 } else {
  clients[0] = ctrl->p2p_client;
  clients[1] = nvmet_ns_dev(ns);

  p2p_dev = pci_p2pmem_find_many(clients, ARRAY_SIZE(clients));
  if (!p2p_dev) {
   pr_err("no peer-to-peer memory is available that's supported by %s and %s\n",
          dev_name(ctrl->p2p_client), ns->device_path);
   return;
  }
 }

 ret = radix_tree_insert(&ctrl->p2p_ns_map, ns->nsid, p2p_dev);
 if (ret < 0)
  pci_dev_put(p2p_dev);

 pr_info("using p2pmem on %s for nsid %d\n", pci_name(p2p_dev),
  ns->nsid);
}
