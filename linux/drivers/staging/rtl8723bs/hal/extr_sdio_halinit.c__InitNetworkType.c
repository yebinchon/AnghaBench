
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int MASK_NETTYPE ;
 int NT_LINK_AP ;
 int REG_CR ;
 int _NETTYPE (int ) ;
 int rtw_read32 (struct adapter*,int ) ;
 int rtw_write32 (struct adapter*,int ,int) ;

__attribute__((used)) static void _InitNetworkType(struct adapter *padapter)
{
 u32 value32;

 value32 = rtw_read32(padapter, REG_CR);



 value32 = (value32 & ~MASK_NETTYPE) | _NETTYPE(NT_LINK_AP);

 rtw_write32(padapter, REG_CR, value32);
}
