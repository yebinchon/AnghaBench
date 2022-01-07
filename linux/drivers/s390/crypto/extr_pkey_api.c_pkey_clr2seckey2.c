
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pkey_apqn {int card; int domain; } ;
typedef enum pkey_key_type { ____Placeholder_pkey_key_type } pkey_key_type ;
typedef enum pkey_key_size { ____Placeholder_pkey_key_size } pkey_key_size ;


 int EINVAL ;
 int ENODEV ;





 size_t SECKEYBLOBSIZE ;
 int cca_clr2cipherkey (int,int,int,int ,int const*,int *,size_t*) ;
 int cca_clr2seckey (int,int,int,int const*,int *) ;

__attribute__((used)) static int pkey_clr2seckey2(const struct pkey_apqn *apqns, size_t nr_apqns,
       enum pkey_key_type ktype, enum pkey_key_size ksize,
       u32 kflags, const u8 *clrkey,
       u8 *keybuf, size_t *keybufsize)
{
 int i, card, dom, rc;


 if (!apqns || !nr_apqns)
  return -EINVAL;


 switch (ktype) {
 case 128:
 case 129:
  if (*keybufsize < SECKEYBLOBSIZE)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }
 switch (ksize) {
 case 132:
 case 131:
 case 130:
  break;
 default:
  return -EINVAL;
 }


 for (i = 0, rc = -ENODEV; i < nr_apqns; i++) {
  card = apqns[i].card;
  dom = apqns[i].domain;
  if (ktype == 128) {
   rc = cca_clr2seckey(card, dom, ksize,
         clrkey, keybuf);
   *keybufsize = (rc ? 0 : SECKEYBLOBSIZE);
  } else
   rc = cca_clr2cipherkey(card, dom, ksize, kflags,
            clrkey, keybuf, keybufsize);
  if (rc == 0)
   break;
 }

 return rc;
}
