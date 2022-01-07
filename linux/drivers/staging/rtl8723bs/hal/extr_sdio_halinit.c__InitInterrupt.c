
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int InitInterrupt8723BSdio (struct adapter*) ;
 int InitSysInterrupt8723BSdio (struct adapter*) ;
 int REG_HIMR ;
 int REG_HISR ;
 int rtw_write32 (struct adapter*,int ,int ) ;

__attribute__((used)) static void _InitInterrupt(struct adapter *padapter)
{

 rtw_write32(padapter, REG_HISR, 0);


 rtw_write32(padapter, REG_HIMR, 0);




 InitInterrupt8723BSdio(padapter);




 InitSysInterrupt8723BSdio(padapter);
}
