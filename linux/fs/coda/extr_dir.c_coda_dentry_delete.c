
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int c_flags; } ;


 int C_PURGE ;
 TYPE_1__* ITOC (int ) ;
 int d_inode (struct dentry const*) ;
 scalar_t__ d_really_is_negative (struct dentry const*) ;
 scalar_t__ is_bad_inode (int ) ;

__attribute__((used)) static int coda_dentry_delete(const struct dentry * dentry)
{
 int flags;

 if (d_really_is_negative(dentry))
  return 0;

 flags = (ITOC(d_inode(dentry))->c_flags) & C_PURGE;
 if (is_bad_inode(d_inode(dentry)) || flags) {
  return 1;
 }
 return 0;
}
