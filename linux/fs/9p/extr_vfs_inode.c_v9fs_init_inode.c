
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct v9fs_session_info {int cache; } ;
struct inode {int * i_fop; int * i_op; int i_rdev; int i_mode; TYPE_1__* i_mapping; int i_ctime; int i_mtime; int i_atime; scalar_t__ i_blocks; } ;
typedef int dev_t ;
struct TYPE_2__ {int * a_ops; } ;


 int CACHE_FSCACHE ;
 int CACHE_LOOSE ;
 int CACHE_MMAP ;
 int EINVAL ;
 int P9_DEBUG_ERROR ;





 int S_IFMT ;


 int current_time (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int inode_init_owner (struct inode*,int *,int) ;
 int p9_debug (int ,char*,...) ;
 int v9fs_addr_operations ;
 int v9fs_cached_file_operations ;
 int v9fs_cached_file_operations_dotl ;
 int v9fs_dir_inode_operations ;
 int v9fs_dir_inode_operations_dotl ;
 int v9fs_dir_inode_operations_dotu ;
 int v9fs_dir_operations ;
 int v9fs_dir_operations_dotl ;
 int v9fs_file_inode_operations ;
 int v9fs_file_inode_operations_dotl ;
 int v9fs_file_operations ;
 int v9fs_file_operations_dotl ;
 int v9fs_mmap_file_operations ;
 int v9fs_mmap_file_operations_dotl ;
 int v9fs_proto_dotl (struct v9fs_session_info*) ;
 int v9fs_proto_dotu (struct v9fs_session_info*) ;
 int v9fs_symlink_inode_operations ;
 int v9fs_symlink_inode_operations_dotl ;

int v9fs_init_inode(struct v9fs_session_info *v9ses,
      struct inode *inode, umode_t mode, dev_t rdev)
{
 int err = 0;

 inode_init_owner(inode, ((void*)0), mode);
 inode->i_blocks = 0;
 inode->i_rdev = rdev;
 inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
 inode->i_mapping->a_ops = &v9fs_addr_operations;

 switch (mode & S_IFMT) {
 case 131:
 case 134:
 case 133:
 case 128:
  if (v9fs_proto_dotl(v9ses)) {
   inode->i_op = &v9fs_file_inode_operations_dotl;
  } else if (v9fs_proto_dotu(v9ses)) {
   inode->i_op = &v9fs_file_inode_operations;
  } else {
   p9_debug(P9_DEBUG_ERROR,
     "special files without extended mode\n");
   err = -EINVAL;
   goto error;
  }
  init_special_inode(inode, inode->i_mode, inode->i_rdev);
  break;
 case 129:
  if (v9fs_proto_dotl(v9ses)) {
   inode->i_op = &v9fs_file_inode_operations_dotl;
   if (v9ses->cache == CACHE_LOOSE ||
       v9ses->cache == CACHE_FSCACHE)
    inode->i_fop =
     &v9fs_cached_file_operations_dotl;
   else if (v9ses->cache == CACHE_MMAP)
    inode->i_fop = &v9fs_mmap_file_operations_dotl;
   else
    inode->i_fop = &v9fs_file_operations_dotl;
  } else {
   inode->i_op = &v9fs_file_inode_operations;
   if (v9ses->cache == CACHE_LOOSE ||
       v9ses->cache == CACHE_FSCACHE)
    inode->i_fop =
     &v9fs_cached_file_operations;
   else if (v9ses->cache == CACHE_MMAP)
    inode->i_fop = &v9fs_mmap_file_operations;
   else
    inode->i_fop = &v9fs_file_operations;
  }

  break;
 case 130:
  if (!v9fs_proto_dotu(v9ses) && !v9fs_proto_dotl(v9ses)) {
   p9_debug(P9_DEBUG_ERROR,
     "extended modes used with legacy protocol\n");
   err = -EINVAL;
   goto error;
  }

  if (v9fs_proto_dotl(v9ses))
   inode->i_op = &v9fs_symlink_inode_operations_dotl;
  else
   inode->i_op = &v9fs_symlink_inode_operations;

  break;
 case 132:
  inc_nlink(inode);
  if (v9fs_proto_dotl(v9ses))
   inode->i_op = &v9fs_dir_inode_operations_dotl;
  else if (v9fs_proto_dotu(v9ses))
   inode->i_op = &v9fs_dir_inode_operations_dotu;
  else
   inode->i_op = &v9fs_dir_inode_operations;

  if (v9fs_proto_dotl(v9ses))
   inode->i_fop = &v9fs_dir_operations_dotl;
  else
   inode->i_fop = &v9fs_dir_operations;

  break;
 default:
  p9_debug(P9_DEBUG_ERROR, "BAD mode 0x%hx S_IFMT 0x%x\n",
    mode, mode & S_IFMT);
  err = -EINVAL;
  goto error;
 }
error:
 return err;

}
