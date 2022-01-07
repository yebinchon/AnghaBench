
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;
struct rtw_backup_info {int dummy; } ;


 int rtw_restore_reg (struct rtw_dev*,struct rtw_backup_info*,int ) ;

__attribute__((used)) static void download_firmware_reg_restore(struct rtw_dev *rtwdev,
       struct rtw_backup_info *bckp,
       u8 bckp_num)
{
 rtw_restore_reg(rtwdev, bckp, bckp_num);
}
