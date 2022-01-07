
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ceph_fs_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_fs_info; } ;



__attribute__((used)) static inline struct ceph_fs_client *ceph_inode_to_client(struct inode *inode)
{
 return (struct ceph_fs_client *)inode->i_sb->s_fs_info;
}
