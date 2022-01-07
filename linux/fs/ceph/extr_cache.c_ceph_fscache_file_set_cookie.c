
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct ceph_inode_info {int fscache; int i_vino; } ;


 int ceph_fscache_can_enable ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int dout (char*,struct inode*,struct file*) ;
 scalar_t__ fscache_cookie_enabled (int ) ;
 int fscache_cookie_valid (int ) ;
 int fscache_disable_cookie (int ,int *,int) ;
 int fscache_enable_cookie (int ,int *,int ,int ,struct inode*) ;
 int fscache_uncache_all_inode_pages (int ,struct inode*) ;
 int i_size_read (struct inode*) ;
 scalar_t__ inode_is_open_for_write (struct inode*) ;

void ceph_fscache_file_set_cookie(struct inode *inode, struct file *filp)
{
 struct ceph_inode_info *ci = ceph_inode(inode);

 if (!fscache_cookie_valid(ci->fscache))
  return;

 if (inode_is_open_for_write(inode)) {
  dout("fscache_file_set_cookie %p %p disabling cache\n",
       inode, filp);
  fscache_disable_cookie(ci->fscache, &ci->i_vino, 0);
  fscache_uncache_all_inode_pages(ci->fscache, inode);
 } else {
  fscache_enable_cookie(ci->fscache, &ci->i_vino, i_size_read(inode),
          ceph_fscache_can_enable, inode);
  if (fscache_cookie_enabled(ci->fscache)) {
   dout("fscache_file_set_cookie %p %p enabling cache\n",
        inode, filp);
  }
 }
}
