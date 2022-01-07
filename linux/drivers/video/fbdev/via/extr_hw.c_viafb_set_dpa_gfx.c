
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GFX_DPA_SETTING {int DFPLow; int DFPHigh; int DVP1Driving; int DVP1; int DVP0DataDri_S1; int DVP0DataDri_S; int DVP0ClockDri_S1; int DVP0ClockDri_S; int DVP0; } ;


 int BIT1 ;
 int BIT2 ;
 int BIT4 ;
 int BIT5 ;
 int CR96 ;
 int CR97 ;
 int CR99 ;
 int CR9B ;





 int SR1B ;
 int SR1E ;
 int SR2A ;
 int SR65 ;
 int VIACR ;
 int VIASR ;
 int viafb_write_reg_mask (int ,int ,int ,int) ;

void viafb_set_dpa_gfx(int output_interface, struct GFX_DPA_SETTING *p_gfx_dpa_setting)

{
 switch (output_interface) {
 case 129:
  {

   viafb_write_reg_mask(CR96, VIACR,
           p_gfx_dpa_setting->DVP0, 0x0F);


   viafb_write_reg_mask(SR1E, VIASR,
           p_gfx_dpa_setting->DVP0ClockDri_S, BIT2);
   viafb_write_reg_mask(SR2A, VIASR,
           p_gfx_dpa_setting->DVP0ClockDri_S1,
           BIT4);
   viafb_write_reg_mask(SR1B, VIASR,
           p_gfx_dpa_setting->DVP0DataDri_S, BIT1);
   viafb_write_reg_mask(SR2A, VIASR,
           p_gfx_dpa_setting->DVP0DataDri_S1, BIT5);
   break;
  }

 case 128:
  {

   viafb_write_reg_mask(CR9B, VIACR,
           p_gfx_dpa_setting->DVP1, 0x0F);


   viafb_write_reg_mask(SR65, VIASR,
           p_gfx_dpa_setting->DVP1Driving, 0x0F);
   break;
  }

 case 131:
  {
   viafb_write_reg_mask(CR97, VIACR,
           p_gfx_dpa_setting->DFPHigh, 0x0F);
   break;
  }

 case 130:
  {
   viafb_write_reg_mask(CR99, VIACR,
           p_gfx_dpa_setting->DFPLow, 0x0F);
   break;
  }

 case 132:
  {
   viafb_write_reg_mask(CR97, VIACR,
           p_gfx_dpa_setting->DFPHigh, 0x0F);
   viafb_write_reg_mask(CR99, VIACR,
           p_gfx_dpa_setting->DFPLow, 0x0F);
   break;
  }
 }
}
