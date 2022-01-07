
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mic_data {void* K1; void* K0; } ;


 int secmicclear (struct mic_data*) ;
 void* secmicgetuint32 (int *) ;

void rtw_secmicsetkey(struct mic_data *pmicdata, u8 *key)
{

 pmicdata->K0 = secmicgetuint32(key);
 pmicdata->K1 = secmicgetuint32(key + 4);

 secmicclear(pmicdata);
}
