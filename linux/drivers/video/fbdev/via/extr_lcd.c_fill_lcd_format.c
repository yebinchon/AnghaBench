
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* lvds_setting_info; } ;
struct TYPE_3__ {scalar_t__ LCDDithering; scalar_t__ device_lcd_dualedge; } ;


 int BIT0 ;
 int BIT4 ;
 int CR88 ;
 int VIACR ;
 int viafb_write_reg_mask (int ,int ,int,int) ;
 TYPE_2__* viaparinfo ;

__attribute__((used)) static void fill_lcd_format(void)
{
 u8 bdithering = 0, bdual = 0;

 if (viaparinfo->lvds_setting_info->device_lcd_dualedge)
  bdual = BIT4;
 if (viaparinfo->lvds_setting_info->LCDDithering)
  bdithering = BIT0;

 viafb_write_reg_mask(CR88, VIACR, (bdithering | bdual), BIT4 + BIT0);
}
