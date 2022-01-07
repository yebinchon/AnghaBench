
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct protaeskeytoken {int len; char protkey; int keytype; int version; int type; } ;
struct pkey_protkey {int len; struct protaeskeytoken protkey; } ;
typedef int ssize_t ;
typedef int protkeytoken ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int TOKTYPE_NON_CCA ;
 int TOKVER_PROTECTED_KEY ;
 int memcpy (char*,struct protaeskeytoken*,int) ;
 int memset (struct protaeskeytoken*,int ,int) ;
 int pkey_genprotkey (int ,struct pkey_protkey*) ;

__attribute__((used)) static ssize_t pkey_protkey_aes_attr_read(u32 keytype, bool is_xts, char *buf,
       loff_t off, size_t count)
{
 struct protaeskeytoken protkeytoken;
 struct pkey_protkey protkey;
 int rc;

 if (off != 0 || count < sizeof(protkeytoken))
  return -EINVAL;
 if (is_xts)
  if (count < 2 * sizeof(protkeytoken))
   return -EINVAL;

 memset(&protkeytoken, 0, sizeof(protkeytoken));
 protkeytoken.type = TOKTYPE_NON_CCA;
 protkeytoken.version = TOKVER_PROTECTED_KEY;
 protkeytoken.keytype = keytype;

 rc = pkey_genprotkey(protkeytoken.keytype, &protkey);
 if (rc)
  return rc;

 protkeytoken.len = protkey.len;
 memcpy(&protkeytoken.protkey, &protkey.protkey, protkey.len);

 memcpy(buf, &protkeytoken, sizeof(protkeytoken));

 if (is_xts) {
  rc = pkey_genprotkey(protkeytoken.keytype, &protkey);
  if (rc)
   return rc;

  protkeytoken.len = protkey.len;
  memcpy(&protkeytoken.protkey, &protkey.protkey, protkey.len);

  memcpy(buf + sizeof(protkeytoken), &protkeytoken,
         sizeof(protkeytoken));

  return 2 * sizeof(protkeytoken);
 }

 return sizeof(protkeytoken);
}
