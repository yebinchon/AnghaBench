
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct rtw_dev {TYPE_2__ hci; } ;
struct TYPE_3__ {int (* start ) (struct rtw_dev*) ;} ;


 int stub1 (struct rtw_dev*) ;

__attribute__((used)) static inline int rtw_hci_start(struct rtw_dev *rtwdev)
{
 return rtwdev->hci.ops->start(rtwdev);
}
