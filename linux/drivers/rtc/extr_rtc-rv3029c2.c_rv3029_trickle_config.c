
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct rv3029_trickle_tab_elem {scalar_t__ r; scalar_t__ conf; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ARRAY_SIZE (struct rv3029_trickle_tab_elem*) ;
 int RV3029_CONTROL_E2P_EECTRL ;
 int RV3029_TRICKLE_MASK ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,scalar_t__) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int rv3029_eeprom_update_bits (struct device*,int ,int ,scalar_t__) ;
 struct rv3029_trickle_tab_elem* rv3029_trickle_tab ;

__attribute__((used)) static void rv3029_trickle_config(struct device *dev)
{
 struct device_node *of_node = dev->of_node;
 const struct rv3029_trickle_tab_elem *elem;
 int i, err;
 u32 ohms;
 u8 trickle_set_bits;

 if (!of_node)
  return;


 err = of_property_read_u32(of_node, "trickle-resistor-ohms", &ohms);
 if (err) {

  trickle_set_bits = 0;
 } else {

  for (i = 0; i < ARRAY_SIZE(rv3029_trickle_tab); i++) {
   elem = &rv3029_trickle_tab[i];
   if (elem->r >= ohms)
    break;
  }
  trickle_set_bits = elem->conf;
  dev_info(dev,
    "Trickle charger enabled at %d ohms resistance.\n",
    elem->r);
 }
 err = rv3029_eeprom_update_bits(dev, RV3029_CONTROL_E2P_EECTRL,
     RV3029_TRICKLE_MASK,
     trickle_set_bits);
 if (err < 0)
  dev_err(dev, "Failed to update trickle charger config\n");
}
