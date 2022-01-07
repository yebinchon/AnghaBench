
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; TYPE_1__* i_fop; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct inode*,struct file*) ;int release; } ;


 int BUG_ON (int) ;


 int S_IFMT ;

 int S_ISDIR (int) ;
 int ceph_fscache_file_set_cookie (struct inode*,struct file*) ;
 int ceph_fscache_register_inode_cookie (struct inode*) ;
 int ceph_init_file_info (struct inode*,struct file*,int,int ) ;
 int ceph_inode (struct inode*) ;
 int ceph_put_fmode (int ,int) ;
 int ceph_release ;
 int dout (char*,struct inode*,struct file*,int) ;
 int stub1 (struct inode*,struct file*) ;

__attribute__((used)) static int ceph_init_file(struct inode *inode, struct file *file, int fmode)
{
 int ret = 0;

 switch (inode->i_mode & S_IFMT) {
 case 128:
  ceph_fscache_register_inode_cookie(inode);
  ceph_fscache_file_set_cookie(inode, file);

 case 130:
  ret = ceph_init_file_info(inode, file, fmode,
      S_ISDIR(inode->i_mode));
  if (ret)
   return ret;
  break;

 case 129:
  dout("init_file %p %p 0%o (symlink)\n", inode, file,
       inode->i_mode);
  ceph_put_fmode(ceph_inode(inode), fmode);
  break;

 default:
  dout("init_file %p %p 0%o (special)\n", inode, file,
       inode->i_mode);




  ceph_put_fmode(ceph_inode(inode), fmode);
  BUG_ON(inode->i_fop->release == ceph_release);


  ret = inode->i_fop->open(inode, file);
 }
 return ret;
}
