
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef scalar_t__ (* toupper_t ) (int ) ;
struct qstr {char* name; unsigned int len; } ;


 unsigned int AFFSNAMEMAX ;
 scalar_t__ affs_check_name (char*,unsigned int,int) ;

__attribute__((used)) static inline int __affs_compare_dentry(unsigned int len,
  const char *str, const struct qstr *name, toupper_t toupper,
  bool notruncate)
{
 const u8 *aname = str;
 const u8 *bname = name->name;






 if (affs_check_name(name->name, name->len, notruncate))
  return 1;





 if (len >= AFFSNAMEMAX) {
  if (name->len < AFFSNAMEMAX)
   return 1;
  len = AFFSNAMEMAX;
 } else if (len != name->len)
  return 1;

 for (; len > 0; len--)
  if (toupper(*aname++) != toupper(*bname++))
   return 1;

 return 0;
}
