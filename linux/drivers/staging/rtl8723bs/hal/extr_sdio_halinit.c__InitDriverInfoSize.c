
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int REG_RX_DRVINFO_SZ ;
 int rtw_write8 (struct adapter*,int ,int ) ;

__attribute__((used)) static void _InitDriverInfoSize(struct adapter *padapter, u8 drvInfoSize)
{
 rtw_write8(padapter, REG_RX_DRVINFO_SZ, drvInfoSize);
}
