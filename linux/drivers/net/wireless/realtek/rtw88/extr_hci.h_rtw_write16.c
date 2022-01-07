
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct rtw_dev {TYPE_2__ hci; } ;
struct TYPE_3__ {int (* write16 ) (struct rtw_dev*,int ,int ) ;} ;


 int stub1 (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static inline void rtw_write16(struct rtw_dev *rtwdev, u32 addr, u16 val)
{
 rtwdev->hci.ops->write16(rtwdev, addr, val);
}
