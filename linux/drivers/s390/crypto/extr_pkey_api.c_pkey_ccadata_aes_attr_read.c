
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct secaeskeytoken {int dummy; } ;
struct pkey_seckey {int seckey; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int cca_genseckey (int,int,int ,int ) ;

__attribute__((used)) static ssize_t pkey_ccadata_aes_attr_read(u32 keytype, bool is_xts, char *buf,
       loff_t off, size_t count)
{
 int rc;
 struct pkey_seckey *seckey = (struct pkey_seckey *) buf;

 if (off != 0 || count < sizeof(struct secaeskeytoken))
  return -EINVAL;
 if (is_xts)
  if (count < 2 * sizeof(struct secaeskeytoken))
   return -EINVAL;

 rc = cca_genseckey(-1, -1, keytype, seckey->seckey);
 if (rc)
  return rc;

 if (is_xts) {
  seckey++;
  rc = cca_genseckey(-1, -1, keytype, seckey->seckey);
  if (rc)
   return rc;

  return 2 * sizeof(struct secaeskeytoken);
 }

 return sizeof(struct secaeskeytoken);
}
