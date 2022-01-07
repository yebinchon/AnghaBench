
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wpwd ;
struct nls_table {int dummy; } ;
typedef scalar_t__ __le16 ;


 int cifs_strtoUTF16 (scalar_t__*,unsigned char const*,int,struct nls_table const*) ;
 int mdfour (unsigned char*,unsigned char*,int) ;
 int memzero_explicit (scalar_t__*,int) ;

int
E_md4hash(const unsigned char *passwd, unsigned char *p16,
 const struct nls_table *codepage)
{
 int rc;
 int len;
 __le16 wpwd[129];


 if (passwd)
  len = cifs_strtoUTF16(wpwd, passwd, 128, codepage);
 else {
  len = 0;
  *wpwd = 0;
 }

 rc = mdfour(p16, (unsigned char *) wpwd, len * sizeof(__le16));
 memzero_explicit(wpwd, sizeof(wpwd));

 return rc;
}
