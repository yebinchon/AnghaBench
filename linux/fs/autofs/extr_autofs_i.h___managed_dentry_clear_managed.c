
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; } ;


 int DCACHE_MANAGE_TRANSIT ;
 int DCACHE_NEED_AUTOMOUNT ;

__attribute__((used)) static inline void __managed_dentry_clear_managed(struct dentry *dentry)
{
 dentry->d_flags &= ~(DCACHE_NEED_AUTOMOUNT|DCACHE_MANAGE_TRANSIT);
}
