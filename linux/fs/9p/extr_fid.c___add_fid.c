
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dlist; } ;
struct hlist_head {int dummy; } ;
struct dentry {int d_fsdata; } ;


 int hlist_add_head (int *,struct hlist_head*) ;

__attribute__((used)) static inline void __add_fid(struct dentry *dentry, struct p9_fid *fid)
{
 hlist_add_head(&fid->dlist, (struct hlist_head *)&dentry->d_fsdata);
}
