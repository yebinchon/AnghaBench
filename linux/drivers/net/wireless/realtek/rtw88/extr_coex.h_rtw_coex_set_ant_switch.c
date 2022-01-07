
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtw_dev {struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* coex_set_ant_switch ) (struct rtw_dev*,int ,int ) ;} ;


 int stub1 (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static inline
void rtw_coex_set_ant_switch(struct rtw_dev *rtwdev, u8 ctrl_type, u8 pos_type)
{
 struct rtw_chip_info *chip = rtwdev->chip;

 if (!chip->ops->coex_set_ant_switch)
  return;

 chip->ops->coex_set_ant_switch(rtwdev, ctrl_type, pos_type);
}
