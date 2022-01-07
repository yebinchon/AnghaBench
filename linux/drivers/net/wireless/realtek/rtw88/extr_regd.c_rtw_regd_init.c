
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_4__ {int country_code; } ;
struct rtw_dev {int regd; TYPE_2__ efuse; TYPE_1__* hw; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;


 int EINVAL ;
 int rtw_regd_find_reg_by_name (int ) ;
 int rtw_regd_init_wiphy (int *,struct wiphy*,void (*) (struct wiphy*,struct regulatory_request*)) ;

int rtw_regd_init(struct rtw_dev *rtwdev,
    void (*reg_notifier)(struct wiphy *wiphy,
           struct regulatory_request *request))
{
 struct wiphy *wiphy = rtwdev->hw->wiphy;

 if (!wiphy)
  return -EINVAL;

 rtwdev->regd = rtw_regd_find_reg_by_name(rtwdev->efuse.country_code);
 rtw_regd_init_wiphy(&rtwdev->regd, wiphy, reg_notifier);

 return 0;
}
