
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {scalar_t__ i_rsubdirs; scalar_t__ i_rfiles; } ;
typedef int ssize_t ;


 int ceph_fmt_xattr (char*,size_t,char*,scalar_t__) ;

__attribute__((used)) static ssize_t ceph_vxattrcb_dir_rentries(struct ceph_inode_info *ci, char *val,
       size_t size)
{
 return ceph_fmt_xattr(val, size, "%lld",
    ci->i_rfiles + ci->i_rsubdirs);
}
