
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int REG_EDCA_BE_PARAM ;
 int REG_EDCA_BK_PARAM ;
 int REG_EDCA_VI_PARAM ;
 int REG_EDCA_VO_PARAM ;
 int REG_MAC_SPEC_SIFS ;
 int REG_SIFS_CTX ;
 int REG_SIFS_TRX ;
 int REG_SPEC_SIFS ;
 int rtw_write16 (struct adapter*,int ,int) ;
 int rtw_write32 (struct adapter*,int ,int) ;

__attribute__((used)) static void _InitEDCA(struct adapter *padapter)
{

 rtw_write16(padapter, REG_SPEC_SIFS, 0x100a);
 rtw_write16(padapter, REG_MAC_SPEC_SIFS, 0x100a);


 rtw_write16(padapter, REG_SIFS_CTX, 0x100a);


 rtw_write16(padapter, REG_SIFS_TRX, 0x100a);


 rtw_write32(padapter, REG_EDCA_BE_PARAM, 0x005EA42B);
 rtw_write32(padapter, REG_EDCA_BK_PARAM, 0x0000A44F);
 rtw_write32(padapter, REG_EDCA_VI_PARAM, 0x005EA324);
 rtw_write32(padapter, REG_EDCA_VO_PARAM, 0x002FA226);
}
