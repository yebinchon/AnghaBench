
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 scalar_t__ CEPH_INO_ROOT ;
 scalar_t__ ceph_ino (struct inode*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static bool is_root_ceph_dentry(struct inode *inode, struct dentry *dentry)
{
 return ceph_ino(inode) == CEPH_INO_ROOT &&
  strncmp(dentry->d_name.name, ".ceph", 5) == 0;
}
