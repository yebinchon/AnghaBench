
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct secaeskeytoken {int mkvp; scalar_t__ bitsize; } ;
struct pkey_apqn {int domain; int card; } ;
struct keytoken_header {scalar_t__ type; scalar_t__ version; } ;
struct cipherkeytoken {int wpllen; int mkvp0; int plfver; } ;
typedef enum pkey_key_type { ____Placeholder_pkey_key_type } pkey_key_type ;
typedef enum pkey_key_size { ____Placeholder_pkey_key_size } pkey_key_size ;


 int EINVAL ;
 int ENODEV ;
 int PKEY_FLAGS_MATCH_ALT_MKVP ;
 int PKEY_FLAGS_MATCH_CUR_MKVP ;
 int PKEY_SIZE_AES_128 ;
 int PKEY_SIZE_AES_192 ;
 int PKEY_SIZE_AES_256 ;
 int PKEY_SIZE_UNKNOWN ;
 int PKEY_TYPE_CCA_CIPHER ;
 int PKEY_TYPE_CCA_DATA ;
 scalar_t__ TOKTYPE_CCA_INTERNAL ;
 scalar_t__ TOKVER_CCA_AES ;
 scalar_t__ TOKVER_CCA_VLSC ;
 int ZCRYPT_CEX3C ;
 int ZCRYPT_CEX6 ;
 int cca_check_secaescipherkey (int ,int,int const*,int ,int) ;
 int cca_check_secaeskeytoken (int ,int,int const*,int ) ;
 int cca_findcard2 (int **,int *,int ,int ,int ,int ,int ,int) ;
 int debug_info ;
 int kfree (int *) ;

__attribute__((used)) static int pkey_verifykey2(const u8 *key, size_t keylen,
      u16 *cardnr, u16 *domain,
      enum pkey_key_type *ktype,
      enum pkey_key_size *ksize, u32 *flags)
{
 int rc;
 u32 _nr_apqns, *_apqns = ((void*)0);
 struct keytoken_header *hdr = (struct keytoken_header *)key;

 if (keylen < sizeof(struct keytoken_header) ||
     hdr->type != TOKTYPE_CCA_INTERNAL)
  return -EINVAL;

 if (hdr->version == TOKVER_CCA_AES) {
  struct secaeskeytoken *t = (struct secaeskeytoken *)key;

  rc = cca_check_secaeskeytoken(debug_info, 3, key, 0);
  if (rc)
   goto out;
  if (ktype)
   *ktype = PKEY_TYPE_CCA_DATA;
  if (ksize)
   *ksize = (enum pkey_key_size) t->bitsize;

  rc = cca_findcard2(&_apqns, &_nr_apqns, *cardnr, *domain,
       ZCRYPT_CEX3C, t->mkvp, 0, 1);
  if (rc == 0 && flags)
   *flags = PKEY_FLAGS_MATCH_CUR_MKVP;
  if (rc == -ENODEV) {
   rc = cca_findcard2(&_apqns, &_nr_apqns,
        *cardnr, *domain,
        ZCRYPT_CEX3C, 0, t->mkvp, 1);
   if (rc == 0 && flags)
    *flags = PKEY_FLAGS_MATCH_ALT_MKVP;
  }
  if (rc)
   goto out;

  *cardnr = ((struct pkey_apqn *)_apqns)->card;
  *domain = ((struct pkey_apqn *)_apqns)->domain;

 } else if (hdr->version == TOKVER_CCA_VLSC) {
  struct cipherkeytoken *t = (struct cipherkeytoken *)key;

  rc = cca_check_secaescipherkey(debug_info, 3, key, 0, 1);
  if (rc)
   goto out;
  if (ktype)
   *ktype = PKEY_TYPE_CCA_CIPHER;
  if (ksize) {
   *ksize = PKEY_SIZE_UNKNOWN;
   if (!t->plfver && t->wpllen == 512)
    *ksize = PKEY_SIZE_AES_128;
   else if (!t->plfver && t->wpllen == 576)
    *ksize = PKEY_SIZE_AES_192;
   else if (!t->plfver && t->wpllen == 640)
    *ksize = PKEY_SIZE_AES_256;
  }

  rc = cca_findcard2(&_apqns, &_nr_apqns, *cardnr, *domain,
       ZCRYPT_CEX6, t->mkvp0, 0, 1);
  if (rc == 0 && flags)
   *flags = PKEY_FLAGS_MATCH_CUR_MKVP;
  if (rc == -ENODEV) {
   rc = cca_findcard2(&_apqns, &_nr_apqns,
        *cardnr, *domain,
        ZCRYPT_CEX6, 0, t->mkvp0, 1);
   if (rc == 0 && flags)
    *flags = PKEY_FLAGS_MATCH_ALT_MKVP;
  }
  if (rc)
   goto out;

  *cardnr = ((struct pkey_apqn *)_apqns)->card;
  *domain = ((struct pkey_apqn *)_apqns)->domain;

 } else
  rc = -EINVAL;

out:
 kfree(_apqns);
 return rc;
}
