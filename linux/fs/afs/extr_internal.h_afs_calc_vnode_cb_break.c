
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {unsigned int cb_break; unsigned int cb_v_break; } ;



__attribute__((used)) static inline unsigned int afs_calc_vnode_cb_break(struct afs_vnode *vnode)
{
 return vnode->cb_break + vnode->cb_v_break;
}
