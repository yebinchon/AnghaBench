
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct super_block {int dummy; } ;
struct TYPE_3__ {int * a_ops; } ;
struct inode {int i_state; int i_mode; int i_ino; int i_size; int i_blocks; struct timespec64 i_ctime; struct timespec64 i_atime; struct timespec64 i_mtime; TYPE_1__ i_data; int * i_op; int * i_fop; } ;
struct cramfs_inode {int mode; int size; int gid; int uid; } ;
struct TYPE_4__ {int flags; int linear_phys_addr; } ;


 int CONFIG_CRAMFS_MTD ;
 int CRAMFS_FLAG_EXT_BLOCK_POINTERS ;
 TYPE_2__* CRAMFS_SB (struct super_block*) ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int IS_ENABLED (int ) ;
 int I_NEW ;


 int S_IFMT ;

 int cramfs_aops ;
 int cramfs_dir_inode_operations ;
 int cramfs_directory_operations ;
 int cramfs_physmem_fops ;
 int cramino (struct cramfs_inode const*,unsigned int) ;
 int generic_ro_fops ;
 int i_gid_write (struct inode*,int ) ;
 int i_uid_write (struct inode*,int ) ;
 struct inode* iget_locked (struct super_block*,int ) ;
 int init_special_inode (struct inode*,int,int ) ;
 int inode_nohighmem (struct inode*) ;
 int old_decode_dev (int) ;
 int page_symlink_inode_operations ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct inode *get_cramfs_inode(struct super_block *sb,
 const struct cramfs_inode *cramfs_inode, unsigned int offset)
{
 struct inode *inode;
 static struct timespec64 zerotime;

 inode = iget_locked(sb, cramino(cramfs_inode, offset));
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 switch (cramfs_inode->mode & S_IFMT) {
 case 128:
  inode->i_fop = &generic_ro_fops;
  inode->i_data.a_ops = &cramfs_aops;
  if (IS_ENABLED(CONFIG_CRAMFS_MTD) &&
      CRAMFS_SB(sb)->flags & CRAMFS_FLAG_EXT_BLOCK_POINTERS &&
      CRAMFS_SB(sb)->linear_phys_addr)
   inode->i_fop = &cramfs_physmem_fops;
  break;
 case 130:
  inode->i_op = &cramfs_dir_inode_operations;
  inode->i_fop = &cramfs_directory_operations;
  break;
 case 129:
  inode->i_op = &page_symlink_inode_operations;
  inode_nohighmem(inode);
  inode->i_data.a_ops = &cramfs_aops;
  break;
 default:
  init_special_inode(inode, cramfs_inode->mode,
    old_decode_dev(cramfs_inode->size));
 }

 inode->i_mode = cramfs_inode->mode;
 i_uid_write(inode, cramfs_inode->uid);
 i_gid_write(inode, cramfs_inode->gid);


 if (!(inode->i_ino & 3)) {
  inode->i_size = cramfs_inode->size;
  inode->i_blocks = (cramfs_inode->size - 1) / 512 + 1;
 }


 inode->i_mtime = inode->i_atime = inode->i_ctime = zerotime;





 unlock_new_inode(inode);

 return inode;
}
