
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int EFUSE_SEL (int ) ;
 int EFUSE_SEL_MASK ;
 int EFUSE_TEST ;
 int EFUSE_WIFI_SEL_0 ;
 int rtw_read32 (struct adapter*,int ) ;
 int rtw_write32 (struct adapter*,int ,int) ;

__attribute__((used)) static void _EfuseCellSel(struct adapter *padapter)
{
 u32 value32;

 value32 = rtw_read32(padapter, EFUSE_TEST);
 value32 = (value32 & ~EFUSE_SEL_MASK) | EFUSE_SEL(EFUSE_WIFI_SEL_0);
 rtw_write32(padapter, EFUSE_TEST, value32);
}
