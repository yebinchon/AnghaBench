
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtw_dev {int dummy; } ;


 int ETH_ALEN ;
 int rtw_write8 (struct rtw_dev*,scalar_t__,int ) ;

__attribute__((used)) static void rtw_vif_write_addr(struct rtw_dev *rtwdev, u32 start, u8 *addr)
{
 int i;

 for (i = 0; i < ETH_ALEN; i++)
  rtw_write8(rtwdev, start + i, addr[i]);
}
