
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 int EDQUOT ;
 int EOPNOTSUPP ;
 scalar_t__ ceph_quota_is_max_bytes_exceeded (struct inode*,scalar_t__) ;
 int dout (char*,scalar_t__,size_t,scalar_t__) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ inode_newsize_ok (struct inode*,scalar_t__) ;

__attribute__((used)) static int is_file_size_ok(struct inode *src_inode, struct inode *dst_inode,
      loff_t src_off, loff_t dst_off, size_t len)
{
 loff_t size, endoff;

 size = i_size_read(src_inode);






 if (src_off + len > size) {
  dout("Copy beyond EOF (%llu + %zu > %llu)\n",
       src_off, len, size);
  return -EOPNOTSUPP;
 }
 size = i_size_read(dst_inode);

 endoff = dst_off + len;
 if (inode_newsize_ok(dst_inode, endoff))
  return -EOPNOTSUPP;

 if (ceph_quota_is_max_bytes_exceeded(dst_inode, endoff))
  return -EDQUOT;

 return 0;
}
