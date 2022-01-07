
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major; } ;
struct bfi_ioc_image_hdr_s {TYPE_1__ fwver; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_TRUE ;

__attribute__((used)) static bfa_boolean_t
bfa_ioc_flash_fwver_valid(struct bfi_ioc_image_hdr_s *flash_fwhdr)
{
 if (flash_fwhdr->fwver.major == 0 || flash_fwhdr->fwver.major == 0xFF)
  return BFA_FALSE;

 return BFA_TRUE;
}
