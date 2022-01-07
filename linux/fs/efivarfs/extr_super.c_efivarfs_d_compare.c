
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned int len; scalar_t__ name; } ;
struct dentry {int dummy; } ;


 unsigned int EFI_VARIABLE_GUID_LEN ;
 scalar_t__ memcmp (char const*,scalar_t__,int) ;
 int strncasecmp (scalar_t__,char const*,unsigned int) ;

__attribute__((used)) static int efivarfs_d_compare(const struct dentry *dentry,
         unsigned int len, const char *str,
         const struct qstr *name)
{
 int guid = len - EFI_VARIABLE_GUID_LEN;

 if (name->len != len)
  return 1;


 if (memcmp(str, name->name, guid))
  return 1;


 return strncasecmp(name->name + guid, str + guid, EFI_VARIABLE_GUID_LEN);
}
