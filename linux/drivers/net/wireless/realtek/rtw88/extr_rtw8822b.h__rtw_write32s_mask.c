
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtw_dev {int dummy; } ;


 int rtw_write32_mask (struct rtw_dev*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
_rtw_write32s_mask(struct rtw_dev *rtwdev, u32 addr, u32 mask, u32 data)
{

 rtw_write32_mask(rtwdev, addr, mask, data);
 rtw_write32_mask(rtwdev, addr + 0x200, mask, data);
}
