
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _adapter {int dummy; } ;


 int ReadRFThermalMeter (struct _adapter*) ;
 int TriggerRFThermalMeter (struct _adapter*) ;
 int msleep (int) ;

void r8712_GetThermalMeter(struct _adapter *pAdapter, u32 *value)
{
 TriggerRFThermalMeter(pAdapter);
 msleep(1000);
 *value = ReadRFThermalMeter(pAdapter);
}
