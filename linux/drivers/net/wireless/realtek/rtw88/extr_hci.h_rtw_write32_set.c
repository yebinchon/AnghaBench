
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int rtw_read32 (struct rtw_dev*,int) ;
 int rtw_write32 (struct rtw_dev*,int,int) ;

__attribute__((used)) static inline void rtw_write32_set(struct rtw_dev *rtwdev, u32 addr, u32 bit)
{
 u32 val;

 val = rtw_read32(rtwdev, addr);
 rtw_write32(rtwdev, addr, val | bit);
}
