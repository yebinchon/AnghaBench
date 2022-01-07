
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcm_usb_init_params {scalar_t__ selected_family; int product_id; } ;


 scalar_t__ BRCM_FAMILY_7445D0 ;
 int SCB2_EN ;
 int SETUP ;
 int USB_CTRL_UNSET_FAMILY (struct brcm_usb_init_params*,int ,int ) ;

__attribute__((used)) static void brcmusb_memc_fix(struct brcm_usb_init_params *params)
{
 u32 prid;

 if (params->selected_family != BRCM_FAMILY_7445D0)
  return;
 prid = params->product_id & 0xfffff000;
 switch (prid) {
 case 0x72520000:
 case 0x74480000:
 case 0x74490000:
 case 0x07252000:
 case 0x07448000:
 case 0x07449000:
  USB_CTRL_UNSET_FAMILY(params, SETUP, SCB2_EN);
 }
}
