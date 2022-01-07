
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int name; int hash; } ;
struct dentry {int dummy; } ;


 int exfat_striptail_len (struct qstr*) ;
 int full_name_hash (struct dentry const*,int ,int ) ;

__attribute__((used)) static int exfat_d_hash(const struct dentry *dentry, struct qstr *qstr)
{
 qstr->hash = full_name_hash(dentry, qstr->name,
        exfat_striptail_len(qstr));
 return 0;
}
