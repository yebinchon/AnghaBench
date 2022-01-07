
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct adapter {TYPE_1__* rtw_wdev; } ;
struct TYPE_2__ {struct wiphy* wiphy; } ;


 int _rtw_regd_init_wiphy (int *,struct wiphy*,void (*) (struct wiphy*,struct regulatory_request*)) ;

int rtw_regd_init(struct adapter *padapter,
    void (*reg_notifier)(struct wiphy *wiphy,
           struct regulatory_request *request))
{
 struct wiphy *wiphy = padapter->rtw_wdev->wiphy;

 _rtw_regd_init_wiphy(((void*)0), wiphy, reg_notifier);

 return 0;
}
