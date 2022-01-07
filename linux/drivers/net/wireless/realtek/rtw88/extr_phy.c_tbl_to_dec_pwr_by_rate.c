
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtw_dev {TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ is_pwr_by_rate_dec; } ;


 int bcd_to_dec_pwr_by_rate (int,int) ;

__attribute__((used)) static u8 tbl_to_dec_pwr_by_rate(struct rtw_dev *rtwdev, u32 hex, u8 i)
{
 if (rtwdev->chip->is_pwr_by_rate_dec)
  return bcd_to_dec_pwr_by_rate(hex, i);

 return (hex >> (i * 8)) & 0xFF;
}
