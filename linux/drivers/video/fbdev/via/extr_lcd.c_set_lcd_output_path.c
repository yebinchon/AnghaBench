
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int gfx_chip_name; } ;


 scalar_t__ BIT0 ;
 scalar_t__ BIT1 ;
 scalar_t__ BIT2 ;
 scalar_t__ BIT7 ;
 int CR91 ;
 int CR97 ;
 int IGA2 ;





 int UNICHROME_K8M890 ;
 int UNICHROME_P4M890 ;
 int VIACR ;
 int viafb_write_reg (int ,int ,int) ;
 int viafb_write_reg_mask (int ,int ,int,scalar_t__) ;
 TYPE_2__* viaparinfo ;

__attribute__((used)) static void set_lcd_output_path(int set_iga, int output_interface)
{
 switch (output_interface) {
 case 132:
  if ((UNICHROME_K8M890 == viaparinfo->chip_info->gfx_chip_name)
      || (UNICHROME_P4M890 ==
      viaparinfo->chip_info->gfx_chip_name))
   viafb_write_reg_mask(CR97, VIACR, 0x84,
           BIT7 + BIT2 + BIT1 + BIT0);

 case 129:
 case 128:
 case 131:
 case 130:
  if (set_iga == IGA2)
   viafb_write_reg(CR91, VIACR, 0x00);
  break;
 }
}
