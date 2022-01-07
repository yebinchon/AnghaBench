
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dummy; } ;
struct dentry {int d_parent; } ;


 struct p9_fid* v9fs_fid_lookup (int ) ;

__attribute__((used)) static inline struct p9_fid *v9fs_parent_fid(struct dentry *dentry)
{
 return v9fs_fid_lookup(dentry->d_parent);
}
