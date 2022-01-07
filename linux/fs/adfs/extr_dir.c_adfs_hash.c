
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qstr {scalar_t__ len; unsigned char* name; int hash; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {scalar_t__ s_namelen; } ;


 TYPE_1__* ADFS_SB (int ) ;
 int ENAMETOOLONG ;
 int adfs_tolower (int ) ;
 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash (struct dentry const*) ;
 unsigned long partial_name_hash (int ,unsigned long) ;

__attribute__((used)) static int
adfs_hash(const struct dentry *parent, struct qstr *qstr)
{
 const unsigned char *name;
 unsigned long hash;
 u32 len;

 if (qstr->len > ADFS_SB(parent->d_sb)->s_namelen)
  return -ENAMETOOLONG;

 len = qstr->len;
 name = qstr->name;
 hash = init_name_hash(parent);
 while (len--)
  hash = partial_name_hash(adfs_tolower(*name++), hash);
 qstr->hash = end_name_hash(hash);

 return 0;
}
