
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int RATE_BITMAP_ALL ;
 int RATE_RRSR_CCK_ONLY_1M ;
 int REG_RL ;
 int REG_RRSR ;
 int REG_SPEC_SIFS ;
 int _LRL (int) ;
 int _SPEC_SIFS_CCK (int) ;
 int _SPEC_SIFS_OFDM (int) ;
 int _SRL (int) ;
 int rtw_read32 (struct adapter*,int ) ;
 int rtw_write16 (struct adapter*,int ,int) ;
 int rtw_write32 (struct adapter*,int ,int ) ;

__attribute__((used)) static void _InitAdaptiveCtrl(struct adapter *padapter)
{
 u16 value16;
 u32 value32;


 value32 = rtw_read32(padapter, REG_RRSR);
 value32 &= ~RATE_BITMAP_ALL;
 value32 |= RATE_RRSR_CCK_ONLY_1M;
 rtw_write32(padapter, REG_RRSR, value32);





 value16 = _SPEC_SIFS_CCK(0x10) | _SPEC_SIFS_OFDM(0x10);
 rtw_write16(padapter, REG_SPEC_SIFS, value16);


 value16 = _LRL(0x30) | _SRL(0x30);
 rtw_write16(padapter, REG_RL, value16);
}
