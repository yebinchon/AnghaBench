
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nvmet_req {int sg; int sg_cnt; int transfer_len; struct pci_dev* p2p_dev; TYPE_3__* sq; TYPE_2__* ns; } ;
struct TYPE_6__ {scalar_t__ qid; TYPE_1__* ctrl; } ;
struct TYPE_5__ {int nsid; } ;
struct TYPE_4__ {int p2p_ns_map; } ;


 int CONFIG_PCI_P2PDMA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 int pci_p2pmem_alloc_sgl (struct pci_dev*,int *,int ) ;
 struct pci_dev* radix_tree_lookup (int *,int ) ;
 int sgl_alloc (int ,int ,int *) ;

int nvmet_req_alloc_sgl(struct nvmet_req *req)
{
 struct pci_dev *p2p_dev = ((void*)0);

 if (IS_ENABLED(CONFIG_PCI_P2PDMA)) {
  if (req->sq->ctrl && req->ns)
   p2p_dev = radix_tree_lookup(&req->sq->ctrl->p2p_ns_map,
          req->ns->nsid);

  req->p2p_dev = ((void*)0);
  if (req->sq->qid && p2p_dev) {
   req->sg = pci_p2pmem_alloc_sgl(p2p_dev, &req->sg_cnt,
             req->transfer_len);
   if (req->sg) {
    req->p2p_dev = p2p_dev;
    return 0;
   }
  }





 }

 req->sg = sgl_alloc(req->transfer_len, GFP_KERNEL, &req->sg_cnt);
 if (!req->sg)
  return -ENOMEM;

 return 0;
}
