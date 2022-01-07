
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct rtw_dev {TYPE_2__ hci; } ;
struct TYPE_3__ {int (* stop ) (struct rtw_dev*) ;} ;


 int rtw_mac_power_off (struct rtw_dev*) ;
 int stub1 (struct rtw_dev*) ;

__attribute__((used)) static void rtw_power_off(struct rtw_dev *rtwdev)
{
 rtwdev->hci.ops->stop(rtwdev);
 rtw_mac_power_off(rtwdev);
}
