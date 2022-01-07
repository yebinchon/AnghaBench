
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switchtec_ntb {TYPE_2__* stdev; TYPE_1__* peer_shared; } ;
struct ntb_dev {int pdev; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_4__ {scalar_t__ mmio; } ;
struct TYPE_3__ {int * spad; } ;


 int EINVAL ;
 int NTB_DEF_PEER_IDX ;
 struct switchtec_ntb* ntb_sndev (struct ntb_dev*) ;
 scalar_t__ pci_resource_start (int ,int ) ;

__attribute__((used)) static int switchtec_ntb_peer_spad_addr(struct ntb_dev *ntb, int pidx,
     int sidx, phys_addr_t *spad_addr)
{
 struct switchtec_ntb *sndev = ntb_sndev(ntb);
 unsigned long offset;

 if (pidx != NTB_DEF_PEER_IDX)
  return -EINVAL;

 offset = (unsigned long)&sndev->peer_shared->spad[sidx] -
  (unsigned long)sndev->stdev->mmio;

 if (spad_addr)
  *spad_addr = pci_resource_start(ntb->pdev, 0) + offset;

 return 0;
}
