
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_vnode {unsigned int cb_break; TYPE_1__* volume; } ;
struct afs_cb_interest {int dummy; } ;
struct TYPE_2__ {unsigned int cb_v_break; } ;



__attribute__((used)) static inline bool afs_cb_is_broken(unsigned int cb_break,
        const struct afs_vnode *vnode,
        const struct afs_cb_interest *cbi)
{
 return !cbi || cb_break != (vnode->cb_break +
        vnode->volume->cb_v_break);
}
