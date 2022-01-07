
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct intel_ntb_dev {TYPE_2__ ntb; } ;
struct TYPE_3__ {int dev; } ;


 int XEON_PPD_SPLIT_BAR_MASK ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static inline int xeon_ppd_bar4_split(struct intel_ntb_dev *ndev, u8 ppd)
{
 if (ppd & XEON_PPD_SPLIT_BAR_MASK) {
  dev_dbg(&ndev->ntb.pdev->dev, "PPD %d split bar\n", ppd);
  return 1;
 }
 return 0;
}
