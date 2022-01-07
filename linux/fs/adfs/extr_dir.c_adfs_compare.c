
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; int name; } ;
struct dentry {int dummy; } ;


 int __adfs_compare (int ,int ,char const*,unsigned int) ;

__attribute__((used)) static int adfs_compare(const struct dentry *dentry, unsigned int len,
   const char *str, const struct qstr *qstr)
{
 return __adfs_compare(qstr->name, qstr->len, str, len);
}
