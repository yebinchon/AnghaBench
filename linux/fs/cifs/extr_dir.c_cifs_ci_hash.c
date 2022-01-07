
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct qstr {int len; int hash; int * name; } ;
struct nls_table {int (* char2uni ) (int *,int,int *) ;} ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {struct nls_table* local_nls; } ;


 TYPE_1__* CIFS_SB (int ) ;
 int cifs_toupper (int ) ;
 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash (struct dentry const*) ;
 unsigned long partial_name_hash (int ,unsigned long) ;
 int stub1 (int *,int,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cifs_ci_hash(const struct dentry *dentry, struct qstr *q)
{
 struct nls_table *codepage = CIFS_SB(dentry->d_sb)->local_nls;
 unsigned long hash;
 wchar_t c;
 int i, charlen;

 hash = init_name_hash(dentry);
 for (i = 0; i < q->len; i += charlen) {
  charlen = codepage->char2uni(&q->name[i], q->len - i, &c);

  if (unlikely(charlen < 0))
   return charlen;
  hash = partial_name_hash(cifs_toupper(c), hash);
 }
 q->hash = end_name_hash(hash);

 return 0;
}
