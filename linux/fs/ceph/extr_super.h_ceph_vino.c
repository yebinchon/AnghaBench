
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ceph_vino {int dummy; } ;
struct TYPE_2__ {struct ceph_vino i_vino; } ;


 TYPE_1__* ceph_inode (struct inode*) ;

__attribute__((used)) static inline struct ceph_vino ceph_vino(struct inode *inode)
{
 return ceph_inode(inode)->i_vino;
}
