
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int PBP_128 ;
 int REG_PBP ;
 int _PSRX (int ) ;
 int _PSTX (int ) ;
 int rtw_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void _InitTransferPageSize(struct adapter *padapter)
{


 u8 value8;
 value8 = _PSRX(PBP_128) | _PSTX(PBP_128);
 rtw_write8(padapter, REG_PBP, value8);
}
