
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct rtw_dev {TYPE_2__ hci; } ;
struct TYPE_3__ {int (* stop ) (struct rtw_dev*) ;} ;


 int stub1 (struct rtw_dev*) ;

__attribute__((used)) static inline void rtw_hci_stop(struct rtw_dev *rtwdev)
{
 rtwdev->hci.ops->stop(rtwdev);
}
