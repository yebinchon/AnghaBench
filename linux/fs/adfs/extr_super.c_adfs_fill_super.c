
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; struct adfs_sb_info* s_fs_info; int s_id; int s_root; int * s_d_op; int * s_op; int s_magic; int s_flags; } ;
struct object_info {int loadaddr; int execaddr; int attr; void* size; scalar_t__ name_len; void* indaddr; void* parent_id; } ;
struct inode {int dummy; } ;
struct buffer_head {unsigned char* b_data; } ;
struct adfs_sb_info {int s_map_size; int s_namelen; struct adfs_sb_info* s_map; struct buffer_head* dm_bh; scalar_t__ s_ftsuffix; int * s_dir; int s_log2sharesize; scalar_t__ s_map2blk; int s_idlen; int s_other_mask; int s_owner_mask; int s_gid; int s_uid; } ;
struct adfs_discrecord {int log2secsize; int nzones; int nzones_high; int root_size; scalar_t__ format_version; int root; int log2sharesize; scalar_t__ log2bpmb; int idlen; } ;


 int ADFS_DEFAULT_OTHER_MASK ;
 int ADFS_DEFAULT_OWNER_MASK ;
 int ADFS_DISCRECORD ;
 int ADFS_DR_OFFSET ;
 int ADFS_FPLUS_NAME_LEN ;
 int ADFS_F_NAME_LEN ;
 int ADFS_NDA_DIRECTORY ;
 int ADFS_NDA_OWNER_READ ;
 int ADFS_NDA_OWNER_WRITE ;
 int ADFS_NDA_PUBLIC_READ ;
 void* ADFS_NEWDIR_SIZE ;
 int ADFS_SB_FLAGS ;
 int ADFS_SUPER_MAGIC ;
 int BLOCK_SIZE ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct adfs_sb_info*) ;
 int KERN_ERR ;
 int PTR_ERR (struct adfs_sb_info*) ;
 scalar_t__ adfs_checkbblk (unsigned char*) ;
 scalar_t__ adfs_checkdiscrecord (struct adfs_discrecord*) ;
 int adfs_dentry_operations ;
 int adfs_error (struct super_block*,char*) ;
 int adfs_f_dir_ops ;
 int adfs_fplus_dir_ops ;
 struct inode* adfs_iget (struct super_block*,struct object_info*) ;
 struct adfs_discrecord* adfs_map_discrecord (struct adfs_sb_info*) ;
 int adfs_msg (struct super_block*,int ,char*,...) ;
 struct adfs_sb_info* adfs_read_map (struct super_block*,struct adfs_discrecord*) ;
 int adfs_sops ;
 int brelse (struct buffer_head*) ;
 int d_make_root (struct inode*) ;
 int kfree (struct adfs_sb_info*) ;
 struct adfs_sb_info* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ parse_options (struct super_block*,struct adfs_sb_info*,void*) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;
 scalar_t__ sb_set_blocksize (struct super_block*,unsigned int) ;

__attribute__((used)) static int adfs_fill_super(struct super_block *sb, void *data, int silent)
{
 struct adfs_discrecord *dr;
 struct buffer_head *bh;
 struct object_info root_obj;
 unsigned char *b_data;
 unsigned int blocksize;
 struct adfs_sb_info *asb;
 struct inode *root;
 int ret = -EINVAL;

 sb->s_flags |= ADFS_SB_FLAGS;

 asb = kzalloc(sizeof(*asb), GFP_KERNEL);
 if (!asb)
  return -ENOMEM;
 sb->s_fs_info = asb;


 asb->s_uid = GLOBAL_ROOT_UID;
 asb->s_gid = GLOBAL_ROOT_GID;
 asb->s_owner_mask = ADFS_DEFAULT_OWNER_MASK;
 asb->s_other_mask = ADFS_DEFAULT_OTHER_MASK;
 asb->s_ftsuffix = 0;

 if (parse_options(sb, asb, data))
  goto error;

 sb_set_blocksize(sb, BLOCK_SIZE);
 if (!(bh = sb_bread(sb, ADFS_DISCRECORD / BLOCK_SIZE))) {
  adfs_msg(sb, KERN_ERR, "error: unable to read superblock");
  ret = -EIO;
  goto error;
 }

 b_data = bh->b_data + (ADFS_DISCRECORD % BLOCK_SIZE);

 if (adfs_checkbblk(b_data)) {
  ret = -EINVAL;
  goto error_badfs;
 }

 dr = (struct adfs_discrecord *)(b_data + ADFS_DR_OFFSET);




 if (adfs_checkdiscrecord(dr)) {
  ret = -EINVAL;
  goto error_badfs;
 }

 blocksize = 1 << dr->log2secsize;
 brelse(bh);

 if (sb_set_blocksize(sb, blocksize)) {
  bh = sb_bread(sb, ADFS_DISCRECORD / sb->s_blocksize);
  if (!bh) {
   adfs_msg(sb, KERN_ERR,
     "error: couldn't read superblock on 2nd try.");
   ret = -EIO;
   goto error;
  }
  b_data = bh->b_data + (ADFS_DISCRECORD % sb->s_blocksize);
  if (adfs_checkbblk(b_data)) {
   adfs_msg(sb, KERN_ERR,
     "error: disc record mismatch, very weird!");
   ret = -EINVAL;
   goto error_free_bh;
  }
  dr = (struct adfs_discrecord *)(b_data + ADFS_DR_OFFSET);
 } else {
  if (!silent)
   adfs_msg(sb, KERN_ERR,
     "error: unsupported blocksize");
  ret = -EINVAL;
  goto error;
 }





 sb->s_magic = ADFS_SUPER_MAGIC;
 asb->s_idlen = dr->idlen;
 asb->s_map_size = dr->nzones | (dr->nzones_high << 8);
 asb->s_map2blk = dr->log2bpmb - dr->log2secsize;
 asb->s_log2sharesize = dr->log2sharesize;

 asb->s_map = adfs_read_map(sb, dr);
 if (IS_ERR(asb->s_map)) {
  ret = PTR_ERR(asb->s_map);
  goto error_free_bh;
 }

 brelse(bh);




 sb->s_op = &adfs_sops;

 dr = adfs_map_discrecord(asb->s_map);

 root_obj.parent_id = root_obj.indaddr = le32_to_cpu(dr->root);
 root_obj.name_len = 0;

 root_obj.loadaddr = 0xfff0003f;
 root_obj.execaddr = 0xec22c000;
 root_obj.size = ADFS_NEWDIR_SIZE;
 root_obj.attr = ADFS_NDA_DIRECTORY | ADFS_NDA_OWNER_READ |
        ADFS_NDA_OWNER_WRITE | ADFS_NDA_PUBLIC_READ;





 if (dr->format_version) {
  root_obj.size = le32_to_cpu(dr->root_size);
  asb->s_dir = &adfs_fplus_dir_ops;
  asb->s_namelen = ADFS_FPLUS_NAME_LEN;
 } else {
  asb->s_dir = &adfs_f_dir_ops;
  asb->s_namelen = ADFS_F_NAME_LEN;
 }




 if (asb->s_ftsuffix)
  asb->s_namelen += 4;

 sb->s_d_op = &adfs_dentry_operations;
 root = adfs_iget(sb, &root_obj);
 sb->s_root = d_make_root(root);
 if (!sb->s_root) {
  int i;
  for (i = 0; i < asb->s_map_size; i++)
   brelse(asb->s_map[i].dm_bh);
  kfree(asb->s_map);
  adfs_error(sb, "get root inode failed\n");
  ret = -EIO;
  goto error;
 }
 return 0;

error_badfs:
 if (!silent)
  adfs_msg(sb, KERN_ERR,
    "error: can't find an ADFS filesystem on dev %s.",
    sb->s_id);
error_free_bh:
 brelse(bh);
error:
 sb->s_fs_info = ((void*)0);
 kfree(asb);
 return ret;
}
