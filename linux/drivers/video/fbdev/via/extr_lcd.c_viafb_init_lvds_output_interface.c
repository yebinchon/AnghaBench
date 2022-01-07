
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lvds_setting_information {int dummy; } ;
struct lvds_chip_information {scalar_t__ output_interface; int lvds_chip_name; } ;
struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int gfx_chip_name; } ;



 scalar_t__ INTERFACE_DFP ;
 void* INTERFACE_DFP_LOW ;
 scalar_t__ INTERFACE_DVP0 ;
 scalar_t__ INTERFACE_DVP1 ;
 scalar_t__ INTERFACE_NONE ;






 int check_diport_of_integrated_lvds (struct lvds_chip_information*,struct lvds_setting_information*) ;
 TYPE_2__* viaparinfo ;

void viafb_init_lvds_output_interface(struct lvds_chip_information
    *plvds_chip_info,
    struct lvds_setting_information
    *plvds_setting_info)
{
 if (INTERFACE_NONE != plvds_chip_info->output_interface) {

  return;
 }

 switch (plvds_chip_info->lvds_chip_name) {

 case 128:
  switch (viaparinfo->chip_info->gfx_chip_name) {
  case 132:
   plvds_chip_info->output_interface = INTERFACE_DVP1;
   break;
  case 133:
   plvds_chip_info->output_interface = INTERFACE_DFP_LOW;
   break;
  default:
   plvds_chip_info->output_interface = INTERFACE_DVP0;
   break;
  }
  break;

 case 134:
  check_diport_of_integrated_lvds(plvds_chip_info,
      plvds_setting_info);
  break;

 default:
  switch (viaparinfo->chip_info->gfx_chip_name) {
  case 131:
  case 129:
  case 130:
   plvds_chip_info->output_interface = INTERFACE_DFP_LOW;
   break;
  default:
   plvds_chip_info->output_interface = INTERFACE_DFP;
   break;
  }
  break;
 }
}
