
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned char* name; unsigned int len; int hash; } ;
struct dentry {int dummy; } ;


 int EFI_VARIABLE_GUID_LEN ;
 int EINVAL ;
 int efivarfs_valid_name (unsigned char const*,unsigned int) ;
 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash (struct dentry const*) ;
 unsigned long partial_name_hash (int ,unsigned long) ;
 int tolower (int ) ;

__attribute__((used)) static int efivarfs_d_hash(const struct dentry *dentry, struct qstr *qstr)
{
 unsigned long hash = init_name_hash(dentry);
 const unsigned char *s = qstr->name;
 unsigned int len = qstr->len;

 if (!efivarfs_valid_name(s, len))
  return -EINVAL;

 while (len-- > EFI_VARIABLE_GUID_LEN)
  hash = partial_name_hash(*s++, hash);


 while (len--)
  hash = partial_name_hash(tolower(*s++), hash);

 qstr->hash = end_name_hash(hash);
 return 0;
}
