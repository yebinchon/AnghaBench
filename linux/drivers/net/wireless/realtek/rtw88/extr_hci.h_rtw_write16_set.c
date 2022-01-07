
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;


 int rtw_read16 (struct rtw_dev*,int ) ;
 int rtw_write16 (struct rtw_dev*,int ,int) ;

__attribute__((used)) static inline void rtw_write16_set(struct rtw_dev *rtwdev, u32 addr, u16 bit)
{
 u16 val;

 val = rtw_read16(rtwdev, addr);
 rtw_write16(rtwdev, addr, val | bit);
}
