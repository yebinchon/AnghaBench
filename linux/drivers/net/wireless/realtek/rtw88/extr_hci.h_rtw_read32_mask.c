
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int __ffs (int) ;
 int rtw_read32 (struct rtw_dev*,int) ;

__attribute__((used)) static inline u32
rtw_read32_mask(struct rtw_dev *rtwdev, u32 addr, u32 mask)
{
 u32 shift = __ffs(mask);
 u32 orig;
 u32 ret;

 orig = rtw_read32(rtwdev, addr);
 ret = (orig & mask) >> shift;

 return ret;
}
