
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rtw_dev {int rf_lock; TYPE_2__* chip; } ;
typedef enum rtw_rf_path { ____Placeholder_rtw_rf_path } rtw_rf_path ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* read_rf ) (struct rtw_dev*,int,int ,int ) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rtw_dev*,int,int ,int ) ;

__attribute__((used)) static inline u32
rtw_read_rf(struct rtw_dev *rtwdev, enum rtw_rf_path rf_path,
     u32 addr, u32 mask)
{
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&rtwdev->rf_lock, flags);
 val = rtwdev->chip->ops->read_rf(rtwdev, rf_path, addr, mask);
 spin_unlock_irqrestore(&rtwdev->rf_lock, flags);

 return val;
}
