
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_3__ {int physical_size; } ;
struct rtw_dev {TYPE_1__ efuse; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* cfg_ldo25 ) (struct rtw_dev*,int) ;} ;


 int BITS_EF_ADDR ;
 int BIT_EF_FLAG ;
 int BIT_MASK_EF_ADDR ;
 int BIT_MASK_EF_DATA ;
 int BIT_SHIFT_EF_ADDR ;
 int EBUSY ;
 int REG_EFUSE_CTRL ;
 int rtw_read32 (struct rtw_dev*,int ) ;
 int rtw_write32 (struct rtw_dev*,int ,int) ;
 int stub1 (struct rtw_dev*,int) ;
 int switch_efuse_bank (struct rtw_dev*) ;
 int udelay (int) ;

__attribute__((used)) static int rtw_dump_physical_efuse_map(struct rtw_dev *rtwdev, u8 *map)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 u32 size = rtwdev->efuse.physical_size;
 u32 efuse_ctl;
 u32 addr;
 u32 cnt;

 switch_efuse_bank(rtwdev);


 chip->ops->cfg_ldo25(rtwdev, 0);

 efuse_ctl = rtw_read32(rtwdev, REG_EFUSE_CTRL);

 for (addr = 0; addr < size; addr++) {
  efuse_ctl &= ~(BIT_MASK_EF_DATA | BITS_EF_ADDR);
  efuse_ctl |= (addr & BIT_MASK_EF_ADDR) << BIT_SHIFT_EF_ADDR;
  rtw_write32(rtwdev, REG_EFUSE_CTRL, efuse_ctl & (~BIT_EF_FLAG));

  cnt = 1000000;
  do {
   udelay(1);
   efuse_ctl = rtw_read32(rtwdev, REG_EFUSE_CTRL);
   if (--cnt == 0)
    return -EBUSY;
  } while (!(efuse_ctl & BIT_EF_FLAG));

  *(map + addr) = (u8)(efuse_ctl & BIT_MASK_EF_DATA);
 }

 return 0;
}
