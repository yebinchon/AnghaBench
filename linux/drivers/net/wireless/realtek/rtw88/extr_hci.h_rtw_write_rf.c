
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
struct TYPE_3__ {int (* write_rf ) (struct rtw_dev*,int,int ,int ,int ) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rtw_dev*,int,int ,int ,int ) ;

__attribute__((used)) static inline void
rtw_write_rf(struct rtw_dev *rtwdev, enum rtw_rf_path rf_path,
      u32 addr, u32 mask, u32 data)
{
 unsigned long flags;

 spin_lock_irqsave(&rtwdev->rf_lock, flags);
 rtwdev->chip->ops->write_rf(rtwdev, rf_path, addr, mask, data);
 spin_unlock_irqrestore(&rtwdev->rf_lock, flags);
}
