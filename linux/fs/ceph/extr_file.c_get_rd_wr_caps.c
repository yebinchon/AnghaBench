
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int CEPH_CAP_FILE_BUFFER ;
 int CEPH_CAP_FILE_RD ;
 int CEPH_CAP_FILE_SHARED ;
 int CEPH_CAP_FILE_WR ;
 int EAGAIN ;
 int ceph_get_caps (struct file*,int ,int ,int,int*,int *) ;
 int ceph_inode (int ) ;
 int ceph_put_cap_refs (int ,int) ;
 int ceph_try_get_caps (int ,int ,int ,int,int*) ;
 int file_inode (struct file*) ;

__attribute__((used)) static int get_rd_wr_caps(struct file *src_filp, int *src_got,
     struct file *dst_filp,
     loff_t dst_endoff, int *dst_got)
{
 int ret = 0;
 bool retrying = 0;

retry_caps:
 ret = ceph_get_caps(dst_filp, CEPH_CAP_FILE_WR, CEPH_CAP_FILE_BUFFER,
       dst_endoff, dst_got, ((void*)0));
 if (ret < 0)
  return ret;






 ret = ceph_try_get_caps(file_inode(src_filp),
    CEPH_CAP_FILE_RD, CEPH_CAP_FILE_SHARED,
    0, src_got);
 if (ret <= 0) {

  ceph_put_cap_refs(ceph_inode(file_inode(dst_filp)), *dst_got);
  if (retrying) {
   if (!ret)

    ret = -EAGAIN;
   return ret;
  }
  ret = ceph_get_caps(src_filp, CEPH_CAP_FILE_RD,
        CEPH_CAP_FILE_SHARED, -1, src_got, ((void*)0));
  if (ret < 0)
   return ret;

  ceph_put_cap_refs(ceph_inode(file_inode(src_filp)), *src_got);
  retrying = 1;
  goto retry_caps;
 }
 return ret;
}
