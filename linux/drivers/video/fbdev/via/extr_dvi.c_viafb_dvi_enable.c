
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {TYPE_3__* tmds_setting_info; TYPE_2__* chip_info; } ;
struct TYPE_7__ {scalar_t__ iga_path; } ;
struct TYPE_5__ {int output_interface; int tmds_chip_slave_addr; int i2c_port; } ;
struct TYPE_6__ {int gfx_chip_name; TYPE_1__ tmds_chip_info; } ;


 int BIT0 ;
 int BIT3 ;
 int BIT5 ;
 int BIT6 ;
 int BIT7 ;
 int CR6B ;
 int CR6C ;
 int CR79 ;
 int CR88 ;
 int CR91 ;
 int CR93 ;
 int CR97 ;
 int CRD2 ;
 scalar_t__ IGA2 ;





 int UNICHROME_CLE266 ;
 int VIACR ;
 int dvi_patch_skew_dvp0 () ;
 int dvi_patch_skew_dvp_low () ;
 int tmds_register_write (int,int) ;
 int via_write_reg_mask (int ,int,int,int) ;
 int viafb_bus_width ;
 int viafb_device_lcd_dualedge ;
 int viafb_i2c_writebyte (int ,int ,int,int) ;
 int viafb_platform_epia_dvi ;
 int viafb_write_reg_mask (int ,int ,int,int) ;
 TYPE_4__* viaparinfo ;

void viafb_dvi_enable(void)
{
 u8 data;

 switch (viaparinfo->chip_info->tmds_chip_info.output_interface) {
 case 130:
  viafb_write_reg_mask(CR6B, VIACR, 0x01, BIT0);
  viafb_write_reg_mask(CR6C, VIACR, 0x21, BIT0 + BIT5);
  dvi_patch_skew_dvp0();
  if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
   tmds_register_write(0x88, 0x3b);
  else


   via_write_reg_mask(VIACR, 0x91, 0x00, 0x20);
  break;

 case 129:
  if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
   viafb_write_reg_mask(CR93, VIACR, 0x21, BIT0 + BIT5);


  if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
   tmds_register_write(0x88, 0x3b);
  else


   via_write_reg_mask(VIACR, 0x91, 0x00, 0x20);


  if (viafb_platform_epia_dvi == 1) {
   viafb_write_reg_mask(CR91, VIACR, 0x1f, 0x1f);
   viafb_write_reg_mask(CR88, VIACR, 0x00, BIT6 + BIT0);
   if (viafb_bus_width == 24) {
    if (viafb_device_lcd_dualedge == 1)
     data = 0x3F;
    else
     data = 0x37;
    viafb_i2c_writebyte(viaparinfo->chip_info->
     tmds_chip_info.i2c_port,
     viaparinfo->chip_info->
     tmds_chip_info.tmds_chip_slave_addr,
     0x08, data);
   }
  }
  break;

 case 132:
  if (viaparinfo->chip_info->gfx_chip_name != UNICHROME_CLE266)
   via_write_reg_mask(VIACR, CR97, 0x03, 0x03);

  via_write_reg_mask(VIACR, 0x91, 0x00, 0x20);
  break;

 case 131:
  if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
   break;

  dvi_patch_skew_dvp_low();
  via_write_reg_mask(VIACR, 0x91, 0x00, 0x20);
  break;

 case 128:

  viafb_write_reg_mask(CR91, VIACR, 0, BIT7);


  viafb_write_reg_mask(CRD2, VIACR, 0, BIT3);
  break;
 }

 if (viaparinfo->tmds_setting_info->iga_path == IGA2) {

  viafb_write_reg_mask(CR79, VIACR, 0x00, BIT0);
 }
}
