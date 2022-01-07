
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {int dummy; } ;
typedef enum afs_file_error { ____Placeholder_afs_file_error } afs_file_error ;


 int EIO ;
 int trace_afs_file_error (struct afs_vnode*,int,int) ;

__attribute__((used)) static inline int afs_bad(struct afs_vnode *vnode, enum afs_file_error where)
{
 trace_afs_file_error(vnode, -EIO, where);
 return -EIO;
}
