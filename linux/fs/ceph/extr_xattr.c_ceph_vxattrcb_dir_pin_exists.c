
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_dir_pin; } ;


 int ENODATA ;

__attribute__((used)) static bool ceph_vxattrcb_dir_pin_exists(struct ceph_inode_info *ci)
{
 return ci->i_dir_pin != -ENODATA;
}
