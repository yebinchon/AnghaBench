
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {int lnk_sta; TYPE_1__* reg; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
struct TYPE_2__ {scalar_t__ (* link_is_up ) (struct intel_ntb_dev*) ;} ;


 int NTB_LNK_STA_SPEED (int ) ;
 int NTB_LNK_STA_WIDTH (int ) ;
 int NTB_SPEED_NONE ;
 int NTB_WIDTH_NONE ;
 struct intel_ntb_dev* ntb_ndev (struct ntb_dev*) ;
 scalar_t__ stub1 (struct intel_ntb_dev*) ;

u64 intel_ntb_link_is_up(struct ntb_dev *ntb, enum ntb_speed *speed,
    enum ntb_width *width)
{
 struct intel_ntb_dev *ndev = ntb_ndev(ntb);

 if (ndev->reg->link_is_up(ndev)) {
  if (speed)
   *speed = NTB_LNK_STA_SPEED(ndev->lnk_sta);
  if (width)
   *width = NTB_LNK_STA_WIDTH(ndev->lnk_sta);
  return 1;
 } else {


  if (speed)
   *speed = NTB_SPEED_NONE;
  if (width)
   *width = NTB_WIDTH_NONE;
  return 0;
 }
}
