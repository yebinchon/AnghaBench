
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_ino; } ;
struct file_id_t {int dummy; } ;
typedef int loff_t ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int EXFAT_ROOT_INO ;
 int SET_IVERSION (struct inode*,int) ;
 int exfat_attach (struct inode*,int ) ;
 int exfat_fill_inode (struct inode*,struct file_id_t*) ;
 struct inode* exfat_iget (struct super_block*,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int iunique (struct super_block*,int ) ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *exfat_build_inode(struct super_block *sb,
           struct file_id_t *fid, loff_t i_pos)
{
 struct inode *inode;
 int err;

 inode = exfat_iget(sb, i_pos);
 if (inode)
  goto out;
 inode = new_inode(sb);
 if (!inode) {
  inode = ERR_PTR(-ENOMEM);
  goto out;
 }
 inode->i_ino = iunique(sb, EXFAT_ROOT_INO);
 SET_IVERSION(inode, 1);
 err = exfat_fill_inode(inode, fid);
 if (err) {
  iput(inode);
  inode = ERR_PTR(err);
  goto out;
 }
 exfat_attach(inode, i_pos);
 insert_inode_hash(inode);
out:
 return inode;
}
