
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ nss; int ant_num; int ptcl; int bw; int hci; } ;
struct rtw_efuse {TYPE_2__ hw_cap; } ;
struct TYPE_3__ {scalar_t__ rf_path_num; } ;
struct rtw_dev {TYPE_1__ hal; struct rtw_efuse efuse; } ;


 scalar_t__ C2H_HW_FEATURE_REPORT ;
 int EBUSY ;
 scalar_t__ EFUSE_HW_CAP_IGNORE ;
 int GET_EFUSE_HW_CAP_ANT_NUM (scalar_t__*) ;
 scalar_t__ GET_EFUSE_HW_CAP_BW (scalar_t__*) ;
 int GET_EFUSE_HW_CAP_HCI (scalar_t__*) ;
 scalar_t__ GET_EFUSE_HW_CAP_NSS (scalar_t__*) ;
 int GET_EFUSE_HW_CAP_PTCL (scalar_t__*) ;
 int HW_FEATURE_LEN ;
 scalar_t__ REG_C2HEVT ;
 int RTW_DBG_EFUSE ;
 int hw_bw_cap_to_bitamp (scalar_t__) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int ,int ,int ,int ,scalar_t__) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_hw_config_rf_ant_num (struct rtw_dev*,int ) ;
 scalar_t__ rtw_read8 (struct rtw_dev*,scalar_t__) ;
 int rtw_write8 (struct rtw_dev*,scalar_t__,int ) ;

__attribute__((used)) static int rtw_dump_hw_feature(struct rtw_dev *rtwdev)
{
 struct rtw_efuse *efuse = &rtwdev->efuse;
 u8 hw_feature[HW_FEATURE_LEN];
 u8 id;
 u8 bw;
 int i;

 id = rtw_read8(rtwdev, REG_C2HEVT);
 if (id != C2H_HW_FEATURE_REPORT) {
  rtw_err(rtwdev, "failed to read hw feature report\n");
  return -EBUSY;
 }

 for (i = 0; i < HW_FEATURE_LEN; i++)
  hw_feature[i] = rtw_read8(rtwdev, REG_C2HEVT + 2 + i);

 rtw_write8(rtwdev, REG_C2HEVT, 0);

 bw = GET_EFUSE_HW_CAP_BW(hw_feature);
 efuse->hw_cap.bw = hw_bw_cap_to_bitamp(bw);
 efuse->hw_cap.hci = GET_EFUSE_HW_CAP_HCI(hw_feature);
 efuse->hw_cap.nss = GET_EFUSE_HW_CAP_NSS(hw_feature);
 efuse->hw_cap.ptcl = GET_EFUSE_HW_CAP_PTCL(hw_feature);
 efuse->hw_cap.ant_num = GET_EFUSE_HW_CAP_ANT_NUM(hw_feature);

 rtw_hw_config_rf_ant_num(rtwdev, efuse->hw_cap.ant_num);

 if (efuse->hw_cap.nss == EFUSE_HW_CAP_IGNORE)
  efuse->hw_cap.nss = rtwdev->hal.rf_path_num;

 rtw_dbg(rtwdev, RTW_DBG_EFUSE,
  "hw cap: hci=0x%02x, bw=0x%02x, ptcl=0x%02x, ant_num=%d, nss=%d\n",
  efuse->hw_cap.hci, efuse->hw_cap.bw, efuse->hw_cap.ptcl,
  efuse->hw_cap.ant_num, efuse->hw_cap.nss);

 return 0;
}
