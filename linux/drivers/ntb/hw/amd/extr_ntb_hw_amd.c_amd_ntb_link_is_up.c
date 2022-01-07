
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ntb_dev {TYPE_1__* pdev; } ;
struct amd_ntb_dev {int lnk_sta; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
struct TYPE_2__ {int dev; } ;


 int NTB_LNK_STA_SPEED (int ) ;
 int NTB_LNK_STA_WIDTH (int ) ;
 int NTB_SPEED_NONE ;
 int NTB_WIDTH_NONE ;
 scalar_t__ amd_link_is_up (struct amd_ntb_dev*) ;
 int dev_dbg (int *,char*) ;
 struct amd_ntb_dev* ntb_ndev (struct ntb_dev*) ;

__attribute__((used)) static u64 amd_ntb_link_is_up(struct ntb_dev *ntb,
         enum ntb_speed *speed,
         enum ntb_width *width)
{
 struct amd_ntb_dev *ndev = ntb_ndev(ntb);
 int ret = 0;

 if (amd_link_is_up(ndev)) {
  if (speed)
   *speed = NTB_LNK_STA_SPEED(ndev->lnk_sta);
  if (width)
   *width = NTB_LNK_STA_WIDTH(ndev->lnk_sta);

  dev_dbg(&ntb->pdev->dev, "link is up.\n");

  ret = 1;
 } else {
  if (speed)
   *speed = NTB_SPEED_NONE;
  if (width)
   *width = NTB_WIDTH_NONE;

  dev_dbg(&ntb->pdev->dev, "link is down.\n");
 }

 return ret;
}
