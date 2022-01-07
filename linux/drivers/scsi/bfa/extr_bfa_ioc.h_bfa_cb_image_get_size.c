
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum bfi_asic_gen { ____Placeholder_bfi_asic_gen } bfi_asic_gen ;





 int bfi_image_cb_size ;
 int bfi_image_ct2_size ;
 int bfi_image_ct_size ;

__attribute__((used)) static inline u32
bfa_cb_image_get_size(enum bfi_asic_gen asic_gen)
{
 switch (asic_gen) {
 case 130:
  return bfi_image_cb_size;
  break;
 case 129:
  return bfi_image_ct_size;
  break;
 case 128:
  return bfi_image_ct2_size;
  break;
 default:
  return 0;
 }
}
