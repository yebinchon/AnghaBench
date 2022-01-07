
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int VIACR ;




 int via_write_reg_mask (int ,int,int,int) ;

__attribute__((used)) static void set_crt_state(u8 state)
{
 u8 value;

 switch (state) {
 case 130:
  value = 0x00;
  break;
 case 129:
  value = 0x10;
  break;
 case 128:
  value = 0x20;
  break;
 case 131:
  value = 0x30;
  break;
 default:
  return;
 }

 via_write_reg_mask(VIACR, 0x36, value, 0x30);
}
