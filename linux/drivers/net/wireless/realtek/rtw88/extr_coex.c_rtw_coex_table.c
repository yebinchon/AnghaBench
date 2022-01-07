
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct rtw_efuse {scalar_t__ share_ant; } ;
struct rtw_coex_dm {size_t cur_table; } ;
struct rtw_coex {struct rtw_coex_dm dm; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_chip_info* chip; struct rtw_coex coex; } ;
struct rtw_chip_info {size_t table_sant_num; size_t table_nsant_num; TYPE_2__* table_nsant; TYPE_1__* table_sant; } ;
struct TYPE_4__ {int wl; int bt; } ;
struct TYPE_3__ {int wl; int bt; } ;


 int rtw_coex_set_table (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static void rtw_coex_table(struct rtw_dev *rtwdev, u8 type)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_dm *coex_dm = &coex->dm;
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_efuse *efuse = &rtwdev->efuse;

 coex_dm->cur_table = type;

 if (efuse->share_ant) {
  if (type < chip->table_sant_num)
   rtw_coex_set_table(rtwdev,
        chip->table_sant[type].bt,
        chip->table_sant[type].wl);
 } else {
  type = type - 100;
  if (type < chip->table_nsant_num)
   rtw_coex_set_table(rtwdev,
        chip->table_nsant[type].bt,
        chip->table_nsant[type].wl);
 }
}
