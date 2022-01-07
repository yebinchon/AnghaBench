
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _adapter {int dummy; } ;


 int RF_PATH_A ;
 int RF_T_METER ;
 int get_rf_reg (struct _adapter*,int ,int ,int) ;

__attribute__((used)) static u32 ReadRFThermalMeter(struct _adapter *pAdapter)
{

 return get_rf_reg(pAdapter, RF_PATH_A, RF_T_METER, 0x1F);
}
