
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int DEF_BRK_TABLE_VAL ;
 int REG_BT_COEX_BRK_TABLE ;
 int REG_BT_COEX_TABLE0 ;
 int REG_BT_COEX_TABLE1 ;
 int rtw_write32 (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static void rtw_coex_set_table(struct rtw_dev *rtwdev, u32 table0, u32 table1)
{

 rtw_write32(rtwdev, REG_BT_COEX_TABLE0, table0);
 rtw_write32(rtwdev, REG_BT_COEX_TABLE1, table1);
 rtw_write32(rtwdev, REG_BT_COEX_BRK_TABLE, 0xf0ffffff);
}
