
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int rtw_read8 (struct rtw_dev*,int ) ;
 int rtw_write8 (struct rtw_dev*,int ,int) ;

__attribute__((used)) static inline void rtw_write8_set(struct rtw_dev *rtwdev, u32 addr, u8 bit)
{
 u8 val;

 val = rtw_read8(rtwdev, addr);
 rtw_write8(rtwdev, addr, val | bit);
}
