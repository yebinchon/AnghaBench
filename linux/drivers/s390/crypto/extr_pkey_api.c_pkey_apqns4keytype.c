
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct pkey_apqn {int dummy; } ;
typedef enum pkey_key_type { ____Placeholder_pkey_key_type } pkey_key_type ;


 int EINVAL ;
 int ENOSPC ;
 int PKEY_FLAGS_MATCH_ALT_MKVP ;
 int PKEY_FLAGS_MATCH_CUR_MKVP ;
 int PKEY_TYPE_CCA_CIPHER ;
 int PKEY_TYPE_CCA_DATA ;
 int ZCRYPT_CEX3C ;
 int ZCRYPT_CEX6 ;
 int cca_findcard2 (int**,int*,int,int,int,scalar_t__,scalar_t__,int) ;
 int kfree (int*) ;
 int memcpy (struct pkey_apqn*,int*,int) ;

__attribute__((used)) static int pkey_apqns4keytype(enum pkey_key_type ktype,
         u8 cur_mkvp[32], u8 alt_mkvp[32], u32 flags,
         struct pkey_apqn *apqns, size_t *nr_apqns)
{
 int rc = -EINVAL;
 u32 _nr_apqns, *_apqns = ((void*)0);

 if (ktype == PKEY_TYPE_CCA_DATA || ktype == PKEY_TYPE_CCA_CIPHER) {
  u64 cur_mkvp = 0, old_mkvp = 0;
  int minhwtype = ZCRYPT_CEX3C;

  if (flags & PKEY_FLAGS_MATCH_CUR_MKVP)
   cur_mkvp = *((u64 *) cur_mkvp);
  if (flags & PKEY_FLAGS_MATCH_ALT_MKVP)
   old_mkvp = *((u64 *) alt_mkvp);
  if (ktype == PKEY_TYPE_CCA_CIPHER)
   minhwtype = ZCRYPT_CEX6;
  rc = cca_findcard2(&_apqns, &_nr_apqns, 0xFFFF, 0xFFFF,
       minhwtype, cur_mkvp, old_mkvp, 1);
  if (rc)
   goto out;
  if (apqns) {
   if (*nr_apqns < _nr_apqns)
    rc = -ENOSPC;
   else
    memcpy(apqns, _apqns, _nr_apqns * sizeof(u32));
  }
  *nr_apqns = _nr_apqns;
 }

out:
 kfree(_apqns);
 return rc;
}
