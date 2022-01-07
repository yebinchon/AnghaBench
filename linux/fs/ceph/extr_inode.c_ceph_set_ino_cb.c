
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct ceph_vino {int dummy; } ;
struct TYPE_2__ {struct ceph_vino i_vino; } ;


 TYPE_1__* ceph_inode (struct inode*) ;
 int ceph_vino_to_ino (struct ceph_vino) ;
 int inode_set_iversion_raw (struct inode*,int ) ;

__attribute__((used)) static int ceph_set_ino_cb(struct inode *inode, void *data)
{
 ceph_inode(inode)->i_vino = *(struct ceph_vino *)data;
 inode->i_ino = ceph_vino_to_ino(*(struct ceph_vino *)data);
 inode_set_iversion_raw(inode, 0);
 return 0;
}
