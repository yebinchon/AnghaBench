
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_ntb_dev {int mw_count; TYPE_1__* reg; } ;
struct TYPE_2__ {int* mw_bar; } ;


 int EINVAL ;

int ndev_mw_to_bar(struct intel_ntb_dev *ndev, int idx)
{
 if (idx < 0 || idx >= ndev->mw_count)
  return -EINVAL;
 return ndev->reg->mw_bar[idx];
}
