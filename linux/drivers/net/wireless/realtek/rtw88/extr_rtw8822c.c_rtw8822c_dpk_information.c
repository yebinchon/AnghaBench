
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtw_dpk_info {int dpk_band; void* dpk_bw; void* dpk_ch; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;


 int BIT (int) ;
 void* FIELD_GET (int,int ) ;
 int RFREG_MASK ;
 int RF_PATH_A ;
 int rtw_read_rf (struct rtw_dev*,int ,int,int ) ;

__attribute__((used)) static void rtw8822c_dpk_information(struct rtw_dev *rtwdev)
{
 struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
 u32 reg;
 u8 band_shift;

 reg = rtw_read_rf(rtwdev, RF_PATH_A, 0x18, RFREG_MASK);

 band_shift = FIELD_GET(BIT(16), reg);
 dpk_info->dpk_band = 1 << band_shift;
 dpk_info->dpk_ch = FIELD_GET(0xff, reg);
 dpk_info->dpk_bw = FIELD_GET(0x3000, reg);
}
