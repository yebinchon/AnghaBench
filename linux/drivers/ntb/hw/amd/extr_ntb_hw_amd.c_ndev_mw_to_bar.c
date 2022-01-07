
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd_ntb_dev {int mw_count; TYPE_1__* dev_data; } ;
struct TYPE_2__ {int mw_idx; } ;


 int EINVAL ;

__attribute__((used)) static int ndev_mw_to_bar(struct amd_ntb_dev *ndev, int idx)
{
 if (idx < 0 || idx > ndev->mw_count)
  return -EINVAL;

 return ndev->dev_data->mw_idx << idx;
}
