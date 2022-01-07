
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; } ;


 int DCACHE_DISCONNECTED ;
 scalar_t__ IS_ROOT (struct dentry*) ;

__attribute__((used)) static int exfat_d_anon_disconn(struct dentry *dentry)
{
 return IS_ROOT(dentry) && (dentry->d_flags & DCACHE_DISCONNECTED);
}
