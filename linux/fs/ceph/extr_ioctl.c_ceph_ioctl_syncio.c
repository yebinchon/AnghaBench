
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct ceph_file_info* private_data; } ;
struct ceph_file_info {int flags; } ;


 int CEPH_F_SYNC ;

__attribute__((used)) static long ceph_ioctl_syncio(struct file *file)
{
 struct ceph_file_info *fi = file->private_data;

 fi->flags |= CEPH_F_SYNC;
 return 0;
}
