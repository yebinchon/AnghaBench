
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {TYPE_1__* peer_reg; scalar_t__ peer_mmio; } ;
struct TYPE_2__ {scalar_t__ spad; } ;


 int ndev_spad_read (struct intel_ntb_dev*,int,scalar_t__) ;
 struct intel_ntb_dev* ntb_ndev (struct ntb_dev*) ;

u32 intel_ntb_peer_spad_read(struct ntb_dev *ntb, int pidx, int sidx)
{
 struct intel_ntb_dev *ndev = ntb_ndev(ntb);

 return ndev_spad_read(ndev, sidx,
         ndev->peer_mmio +
         ndev->peer_reg->spad);
}
