
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;


 struct p9_fid* clone_fid (int ) ;
 int v9fs_fid_lookup (struct dentry*) ;

__attribute__((used)) static inline struct p9_fid *v9fs_fid_clone(struct dentry *dentry)
{
 return clone_fid(v9fs_fid_lookup(dentry));
}
