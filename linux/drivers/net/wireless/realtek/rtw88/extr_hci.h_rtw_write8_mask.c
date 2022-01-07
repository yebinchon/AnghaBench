
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int __ffs (int) ;
 int rtw_read8 (struct rtw_dev*,int) ;
 int rtw_write8 (struct rtw_dev*,int,int) ;

__attribute__((used)) static inline void
rtw_write8_mask(struct rtw_dev *rtwdev, u32 addr, u32 mask, u8 data)
{
 u32 shift;
 u8 orig, set;

 mask &= 0xff;
 shift = __ffs(mask);

 orig = rtw_read8(rtwdev, addr);
 set = (orig & ~mask) | ((data << shift) & mask);
 rtw_write8(rtwdev, addr, set);
}
