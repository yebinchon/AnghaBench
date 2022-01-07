
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int SysIntrMask; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

void InitSysInterrupt8723BSdio(struct adapter *adapter)
{
 struct hal_com_data *haldata;


 haldata = GET_HAL_DATA(adapter);

 haldata->SysIntrMask = (





       0);
}
