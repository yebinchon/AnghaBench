
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {TYPE_1__* self_reg; scalar_t__ self_mmio; } ;
struct TYPE_2__ {scalar_t__ spad; } ;


 int ndev_spad_write (struct intel_ntb_dev*,int,int ,scalar_t__) ;
 struct intel_ntb_dev* ntb_ndev (struct ntb_dev*) ;

int intel_ntb_spad_write(struct ntb_dev *ntb, int idx, u32 val)
{
 struct intel_ntb_dev *ndev = ntb_ndev(ntb);

 return ndev_spad_write(ndev, idx, val,
          ndev->self_mmio +
          ndev->self_reg->spad);
}
