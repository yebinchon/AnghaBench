
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct qstr {unsigned int len; char const* name; } ;
struct nls_table {int (* char2uni ) (char const*,unsigned int,int *) ;} ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {struct nls_table* local_nls; } ;


 TYPE_1__* CIFS_SB (int ) ;
 scalar_t__ cifs_toupper (int ) ;
 int stub1 (char const*,unsigned int,int *) ;
 int stub2 (char const*,int,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cifs_ci_compare(const struct dentry *dentry,
  unsigned int len, const char *str, const struct qstr *name)
{
 struct nls_table *codepage = CIFS_SB(dentry->d_sb)->local_nls;
 wchar_t c1, c2;
 int i, l1, l2;







 if (name->len != len)
  return 1;

 for (i = 0; i < len; i += l1) {

  l1 = codepage->char2uni(&str[i], len - i, &c1);
  l2 = codepage->char2uni(&name->name[i], name->len - i, &c2);





  if (unlikely(l1 < 0 && l2 < 0)) {
   if (str[i] != name->name[i])
    return 1;
   l1 = 1;
   continue;
  }





  if (l1 != l2)
   return 1;


  if (cifs_toupper(c1) != cifs_toupper(c2))
   return 1;
 }

 return 0;
}
