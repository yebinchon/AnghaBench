
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 int __affs_compare_dentry (unsigned int,char const*,struct qstr const*,int ,int ) ;
 int affs_intl_toupper ;
 int affs_nofilenametruncate (struct dentry const*) ;

__attribute__((used)) static int
affs_intl_compare_dentry(const struct dentry *dentry,
  unsigned int len, const char *str, const struct qstr *name)
{
 return __affs_compare_dentry(len, str, name, affs_intl_toupper,
         affs_nofilenametruncate(dentry));

}
