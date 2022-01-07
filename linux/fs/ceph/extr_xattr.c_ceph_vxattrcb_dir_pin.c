
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {scalar_t__ i_dir_pin; } ;
typedef int ssize_t ;


 int ceph_fmt_xattr (char*,size_t,char*,int) ;

__attribute__((used)) static ssize_t ceph_vxattrcb_dir_pin(struct ceph_inode_info *ci, char *val,
         size_t size)
{
 return ceph_fmt_xattr(val, size, "%d", (int)ci->i_dir_pin);
}
