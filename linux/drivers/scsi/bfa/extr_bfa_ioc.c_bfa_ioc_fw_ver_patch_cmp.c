
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ patch; scalar_t__ phase; scalar_t__ build; } ;
struct bfi_ioc_image_hdr_s {TYPE_1__ fwver; } ;
typedef enum bfi_ioc_img_ver_cmp_e { ____Placeholder_bfi_ioc_img_ver_cmp_e } bfi_ioc_img_ver_cmp_e ;


 scalar_t__ BFA_FALSE ;
 scalar_t__ BFA_TRUE ;
 int BFI_IOC_IMG_VER_BETTER ;
 int BFI_IOC_IMG_VER_INCOMP ;
 int BFI_IOC_IMG_VER_OLD ;
 int BFI_IOC_IMG_VER_SAME ;
 scalar_t__ bfa_ioc_fw_ver_compatible (struct bfi_ioc_image_hdr_s*,struct bfi_ioc_image_hdr_s*) ;
 scalar_t__ fwhdr_is_ga (struct bfi_ioc_image_hdr_s*) ;

__attribute__((used)) static enum bfi_ioc_img_ver_cmp_e
bfa_ioc_fw_ver_patch_cmp(struct bfi_ioc_image_hdr_s *base_fwhdr,
    struct bfi_ioc_image_hdr_s *fwhdr_to_cmp)
{
 if (bfa_ioc_fw_ver_compatible(base_fwhdr, fwhdr_to_cmp) == BFA_FALSE)
  return BFI_IOC_IMG_VER_INCOMP;

 if (fwhdr_to_cmp->fwver.patch > base_fwhdr->fwver.patch)
  return BFI_IOC_IMG_VER_BETTER;

 else if (fwhdr_to_cmp->fwver.patch < base_fwhdr->fwver.patch)
  return BFI_IOC_IMG_VER_OLD;






 if (fwhdr_is_ga(base_fwhdr) == BFA_TRUE) {
  if (fwhdr_is_ga(fwhdr_to_cmp))
   return BFI_IOC_IMG_VER_SAME;
  else
   return BFI_IOC_IMG_VER_OLD;
 } else {
  if (fwhdr_is_ga(fwhdr_to_cmp))
   return BFI_IOC_IMG_VER_BETTER;
 }

 if (fwhdr_to_cmp->fwver.phase > base_fwhdr->fwver.phase)
  return BFI_IOC_IMG_VER_BETTER;
 else if (fwhdr_to_cmp->fwver.phase < base_fwhdr->fwver.phase)
  return BFI_IOC_IMG_VER_OLD;

 if (fwhdr_to_cmp->fwver.build > base_fwhdr->fwver.build)
  return BFI_IOC_IMG_VER_BETTER;
 else if (fwhdr_to_cmp->fwver.build < base_fwhdr->fwver.build)
  return BFI_IOC_IMG_VER_OLD;





 return BFI_IOC_IMG_VER_SAME;
}
