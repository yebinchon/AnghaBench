
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ceph_vino {scalar_t__ ino; scalar_t__ snap; } ;
struct TYPE_2__ {scalar_t__ ino; scalar_t__ snap; } ;
struct ceph_inode_info {TYPE_1__ i_vino; } ;


 struct ceph_inode_info* ceph_inode (struct inode*) ;

__attribute__((used)) static inline int ceph_ino_compare(struct inode *inode, void *data)
{
 struct ceph_vino *pvino = (struct ceph_vino *)data;
 struct ceph_inode_info *ci = ceph_inode(inode);
 return ci->i_vino.ino == pvino->ino &&
  ci->i_vino.snap == pvino->snap;
}
