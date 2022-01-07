
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_3__ {int ino; } ;
struct TYPE_4__ {TYPE_1__ i_vino; } ;


 TYPE_2__* ceph_inode (struct inode*) ;

__attribute__((used)) static inline u64 ceph_ino(struct inode *inode)
{
 return ceph_inode(inode)->i_vino.ino;
}
