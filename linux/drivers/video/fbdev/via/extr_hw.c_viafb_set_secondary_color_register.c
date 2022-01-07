
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int VIASR ;
 int set_color_register (int ,int ,int ,int ) ;
 int viafb_write_reg_mask (int,int ,int,int) ;

void viafb_set_secondary_color_register(u8 index, u8 red, u8 green, u8 blue)
{
 viafb_write_reg_mask(0x1A, VIASR, 0x01, 0x01);
 set_color_register(index, red, green, blue);
}
