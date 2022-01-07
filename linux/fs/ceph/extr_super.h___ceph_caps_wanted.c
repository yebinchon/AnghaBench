
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int dummy; } ;


 int CEPH_CAP_FILE_BUFFER ;
 int CEPH_CAP_FILE_EXCL ;
 int __ceph_caps_file_wanted (struct ceph_inode_info*) ;
 int __ceph_caps_used (struct ceph_inode_info*) ;

__attribute__((used)) static inline int __ceph_caps_wanted(struct ceph_inode_info *ci)
{
 int w = __ceph_caps_file_wanted(ci) | __ceph_caps_used(ci);
 if (w & CEPH_CAP_FILE_BUFFER)
  w |= CEPH_CAP_FILE_EXCL;
 return w;
}
