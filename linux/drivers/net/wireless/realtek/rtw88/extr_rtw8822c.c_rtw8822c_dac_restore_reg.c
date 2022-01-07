
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rtw_dev {int dummy; } ;
struct rtw_backup_info {size_t val; size_t reg; } ;


 size_t DACK_PATH_8822C ;
 int DACK_REG_8822C ;
 size_t DACK_RF_8822C ;
 int RFREG_MASK ;
 int rtw_restore_reg (struct rtw_dev*,struct rtw_backup_info*,int ) ;
 int rtw_write_rf (struct rtw_dev*,size_t,size_t,int ,size_t) ;

__attribute__((used)) static void rtw8822c_dac_restore_reg(struct rtw_dev *rtwdev,
         struct rtw_backup_info *backup,
         struct rtw_backup_info *backup_rf)
{
 u32 path, i;
 u32 val;
 u32 reg;

 rtw_restore_reg(rtwdev, backup, DACK_REG_8822C);

 for (path = 0; path < DACK_PATH_8822C; path++) {
  for (i = 0; i < DACK_RF_8822C; i++) {
   val = backup_rf[path * i + i].val;
   reg = backup_rf[path * i + i].reg;
   rtw_write_rf(rtwdev, path, reg, RFREG_MASK, val);
  }
 }
}
