
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int gfx_chip_name; } ;


 int BIT0 ;
 int BIT7 ;
 int CR33 ;
 int LUT_DATA ;
 int LUT_INDEX_READ ;
 int SR16 ;
 int SR1A ;
 int VIACR ;
 int VIASR ;
 unsigned char inb (int ) ;
 int outb (int ,int ) ;
 unsigned char viafb_read_reg (int ,int ) ;
 int viafb_write_reg (int ,int ,unsigned char) ;
 int viafb_write_reg_mask (int ,int ,int,int ) ;
 TYPE_2__* viaparinfo ;

void viafb_get_gamma_table(unsigned int *gamma_table)
{
 unsigned char color_r, color_g, color_b;
 unsigned char sr1a = 0;
 int i;


 switch (viaparinfo->chip_info->gfx_chip_name) {
 case 136:
 case 133:
  viafb_write_reg_mask(SR16, VIASR, 0x80, BIT7);
  break;

 case 132:
 case 128:
 case 135:
 case 134:
 case 131:
 case 130:
 case 129:
  viafb_write_reg_mask(CR33, VIACR, 0x80, BIT7);
  break;
 }
 sr1a = viafb_read_reg(VIASR, SR1A);
 viafb_write_reg_mask(SR1A, VIASR, 0x0, BIT0);


 outb(0, LUT_INDEX_READ);
 for (i = 0; i < 256; i++) {
  color_r = inb(LUT_DATA);
  color_g = inb(LUT_DATA);
  color_b = inb(LUT_DATA);
  gamma_table[i] =
      ((((u32) color_r) << 16) |
       (((u16) color_g) << 8)) | color_b;
 }
 viafb_write_reg(SR1A, VIASR, sr1a);
}
