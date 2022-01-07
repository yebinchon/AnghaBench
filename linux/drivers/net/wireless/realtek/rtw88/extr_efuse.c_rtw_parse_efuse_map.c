
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtw_efuse {int logical_size; int physical_size; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_efuse ) (struct rtw_dev*,int *) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int memset (int *,int,int ) ;
 int rtw_dump_logical_efuse_map (struct rtw_dev*,int *,int *) ;
 int rtw_dump_physical_efuse_map (struct rtw_dev*,int *) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int stub1 (struct rtw_dev*,int *) ;

int rtw_parse_efuse_map(struct rtw_dev *rtwdev)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 u32 phy_size = efuse->physical_size;
 u32 log_size = efuse->logical_size;
 u8 *phy_map = ((void*)0);
 u8 *log_map = ((void*)0);
 int ret = 0;

 phy_map = kmalloc(phy_size, GFP_KERNEL);
 log_map = kmalloc(log_size, GFP_KERNEL);
 if (!phy_map || !log_map) {
  ret = -ENOMEM;
  goto out_free;
 }

 ret = rtw_dump_physical_efuse_map(rtwdev, phy_map);
 if (ret) {
  rtw_err(rtwdev, "failed to dump efuse physical map\n");
  goto out_free;
 }

 memset(log_map, 0xff, log_size);
 ret = rtw_dump_logical_efuse_map(rtwdev, phy_map, log_map);
 if (ret) {
  rtw_err(rtwdev, "failed to dump efuse logical map\n");
  goto out_free;
 }

 ret = chip->ops->read_efuse(rtwdev, log_map);
 if (ret) {
  rtw_err(rtwdev, "failed to read efuse map\n");
  goto out_free;
 }

out_free:
 kfree(log_map);
 kfree(phy_map);

 return ret;
}
