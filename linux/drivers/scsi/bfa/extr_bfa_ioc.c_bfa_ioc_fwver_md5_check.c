
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_image_hdr_s {scalar_t__* md5sum; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int BFI_IOC_MD5SUM_SZ ;

__attribute__((used)) static bfa_boolean_t
bfa_ioc_fwver_md5_check(struct bfi_ioc_image_hdr_s *fwhdr_1,
    struct bfi_ioc_image_hdr_s *fwhdr_2)
{
 int i;

 for (i = 0; i < BFI_IOC_MD5SUM_SZ; i++)
  if (fwhdr_1->md5sum[i] != fwhdr_2->md5sum[i])
   return BFA_FALSE;

 return BFA_TRUE;
}
