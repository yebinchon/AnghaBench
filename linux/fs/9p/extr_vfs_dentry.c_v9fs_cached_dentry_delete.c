
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int P9_DEBUG_VFS ;
 scalar_t__ d_really_is_negative (struct dentry const*) ;
 int p9_debug (int ,char*,struct dentry const*,struct dentry const*) ;

__attribute__((used)) static int v9fs_cached_dentry_delete(const struct dentry *dentry)
{
 p9_debug(P9_DEBUG_VFS, " dentry: %pd (%p)\n",
   dentry, dentry);


 if (d_really_is_negative(dentry))
  return 1;
 return 0;
}
