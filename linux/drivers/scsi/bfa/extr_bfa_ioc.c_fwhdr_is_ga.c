
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phase; scalar_t__ build; } ;
struct bfi_ioc_image_hdr_s {TYPE_1__ fwver; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_TRUE ;

__attribute__((used)) static bfa_boolean_t fwhdr_is_ga(struct bfi_ioc_image_hdr_s *fwhdr)
{
 if (fwhdr->fwver.phase == 0 &&
  fwhdr->fwver.build == 0)
  return BFA_TRUE;

 return BFA_FALSE;
}
