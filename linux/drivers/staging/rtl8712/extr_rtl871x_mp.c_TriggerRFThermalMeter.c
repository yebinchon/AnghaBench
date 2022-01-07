
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _adapter {int dummy; } ;


 int RF_PATH_A ;
 int RF_T_METER ;
 int bRFRegOffsetMask ;
 int set_rf_reg (struct _adapter*,int ,int ,int ,int) ;

__attribute__((used)) static void TriggerRFThermalMeter(struct _adapter *pAdapter)
{

 set_rf_reg(pAdapter, RF_PATH_A, RF_T_METER, bRFRegOffsetMask, 0x60);
}
