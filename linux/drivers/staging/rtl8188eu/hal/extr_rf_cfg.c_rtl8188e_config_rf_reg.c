
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int RFREG_OFFSET_MASK ;
 int RF_PATH_A ;
 int rtl_rfreg_delay (struct adapter*,int ,int,int ,int) ;

__attribute__((used)) static void rtl8188e_config_rf_reg(struct adapter *adapt,
 u32 addr, u32 data)
{
 u32 content = 0x1000;
 u32 maskforphyset = content & 0xE000;

 rtl_rfreg_delay(adapt, RF_PATH_A, addr | maskforphyset,
   RFREG_OFFSET_MASK,
   data);
}
