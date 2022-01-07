
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {TYPE_1__* peer_reg; int peer_addr; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int spad; } ;


 int ndev_spad_addr (struct intel_ntb_dev*,int,int *,int ,int ) ;
 struct intel_ntb_dev* ntb_ndev (struct ntb_dev*) ;

int intel_ntb_peer_spad_addr(struct ntb_dev *ntb, int pidx, int sidx,
        phys_addr_t *spad_addr)
{
 struct intel_ntb_dev *ndev = ntb_ndev(ntb);

 return ndev_spad_addr(ndev, sidx, spad_addr, ndev->peer_addr,
         ndev->peer_reg->spad);
}
