
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int (* toupper_t ) (int const) ;
struct qstr {int hash; int len; int * name; } ;
struct dentry {int dummy; } ;


 int AFFSNAMEMAX ;
 int affs_check_name (int *,int ,int) ;
 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash (struct dentry const*) ;
 scalar_t__ min (int ,int ) ;
 unsigned long partial_name_hash (int ,unsigned long) ;

__attribute__((used)) static inline int
__affs_hash_dentry(const struct dentry *dentry, struct qstr *qstr, toupper_t toupper, bool notruncate)
{
 const u8 *name = qstr->name;
 unsigned long hash;
 int retval;
 u32 len;

 retval = affs_check_name(qstr->name, qstr->len, notruncate);
 if (retval)
  return retval;

 hash = init_name_hash(dentry);
 len = min(qstr->len, AFFSNAMEMAX);
 for (; len > 0; name++, len--)
  hash = partial_name_hash(toupper(*name), hash);
 qstr->hash = end_name_hash(hash);

 return 0;
}
