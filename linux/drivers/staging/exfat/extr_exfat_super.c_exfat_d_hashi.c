
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qstr {unsigned char* name; int hash; } ;
struct dentry {struct super_block* d_sb; } ;


 int end_name_hash (unsigned long) ;
 unsigned int exfat_striptail_len (struct qstr*) ;
 unsigned long init_name_hash (struct dentry const*) ;
 int nls_upper (struct super_block*,int ) ;
 unsigned long partial_name_hash (int ,unsigned long) ;

__attribute__((used)) static int exfat_d_hashi(const struct dentry *dentry, struct qstr *qstr)
{
 struct super_block *sb = dentry->d_sb;
 const unsigned char *name;
 unsigned int len;
 unsigned long hash;

 name = qstr->name;
 len = exfat_striptail_len(qstr);

 hash = init_name_hash(dentry);
 while (len--)
  hash = partial_name_hash(nls_upper(sb, *name++), hash);
 qstr->hash = end_name_hash(hash);

 return 0;
}
