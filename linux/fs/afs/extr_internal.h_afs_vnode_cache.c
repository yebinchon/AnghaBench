
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {int dummy; } ;
struct afs_vnode {struct fscache_cookie* cache; } ;



__attribute__((used)) static inline struct fscache_cookie *afs_vnode_cache(struct afs_vnode *vnode)
{



 return ((void*)0);

}
