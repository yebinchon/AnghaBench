
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int VIASR ;


 int via_write_reg_mask (int ,int,int,int) ;

__attribute__((used)) static void set_dvp0_state(u8 state)
{
 u8 value;

 switch (state) {
 case 128:
  value = 0xC0;
  break;
 case 129:
  value = 0x00;
  break;
 default:
  return;
 }

 via_write_reg_mask(VIASR, 0x1E, value, 0xC0);
}
