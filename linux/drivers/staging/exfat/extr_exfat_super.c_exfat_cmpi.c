
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int name; } ;
struct nls_table {int dummy; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {struct nls_table* nls_io; } ;


 TYPE_1__* EXFAT_SB (int ) ;
 unsigned int __exfat_striptail_len (unsigned int,char const*) ;
 unsigned int exfat_striptail_len (struct qstr const*) ;
 scalar_t__ nls_strnicmp (struct nls_table*,int ,char const*,unsigned int) ;
 scalar_t__ strncasecmp (int ,char const*,unsigned int) ;

__attribute__((used)) static int exfat_cmpi(const struct dentry *dentry, unsigned int len,
        const char *str, const struct qstr *name)
{
 struct nls_table *t = EXFAT_SB(dentry->d_sb)->nls_io;
 unsigned int alen, blen;

 alen = exfat_striptail_len(name);
 blen = __exfat_striptail_len(len, str);
 if (alen == blen) {
  if (!t) {
   if (strncasecmp(name->name, str, alen) == 0)
    return 0;
  } else {
   if (nls_strnicmp(t, name->name, str, alen) == 0)
    return 0;
  }
 }
 return 1;
}
