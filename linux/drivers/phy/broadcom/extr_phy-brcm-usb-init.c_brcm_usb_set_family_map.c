
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcm_usb_init_params {int selected_family; int family_name; int * usb_reg_bits_map; } ;


 int brcmusb_get_family_type (struct brcm_usb_init_params*) ;
 int * family_names ;
 int ** usb_reg_bits_map_table ;

void brcm_usb_set_family_map(struct brcm_usb_init_params *params)
{
 int fam;

 fam = brcmusb_get_family_type(params);
 params->selected_family = fam;
 params->usb_reg_bits_map =
  &usb_reg_bits_map_table[fam][0];
 params->family_name = family_names[fam];
}
