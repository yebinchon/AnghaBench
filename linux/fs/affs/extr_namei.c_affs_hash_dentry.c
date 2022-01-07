
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 int __affs_hash_dentry (struct dentry const*,struct qstr*,int ,int ) ;
 int affs_nofilenametruncate (struct dentry const*) ;
 int affs_toupper ;

__attribute__((used)) static int
affs_hash_dentry(const struct dentry *dentry, struct qstr *qstr)
{
 return __affs_hash_dentry(dentry, qstr, affs_toupper,
      affs_nofilenametruncate(dentry));

}
