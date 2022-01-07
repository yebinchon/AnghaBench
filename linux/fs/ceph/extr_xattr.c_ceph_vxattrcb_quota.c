
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_max_files; int i_max_bytes; } ;
typedef int ssize_t ;


 int ceph_fmt_xattr (char*,size_t,char*,int ,int ) ;

__attribute__((used)) static ssize_t ceph_vxattrcb_quota(struct ceph_inode_info *ci, char *val,
       size_t size)
{
 return ceph_fmt_xattr(val, size, "max_bytes=%llu max_files=%llu",
    ci->i_max_bytes, ci->i_max_files);
}
