
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct inode {int i_mode; int i_blocks; int i_sb; void* i_size; TYPE_3__ i_ctime; TYPE_2__ i_mtime; void* i_rdev; } ;
struct erofs_sb_info {void* build_time_nsec; void* build_time; } ;
struct TYPE_5__ {int compressed_blocks; int rdev; int raw_blkaddr; } ;
struct erofs_inode_extended {TYPE_1__ i_u; int i_size; int i_ctime_nsec; int i_ctime; int i_nlink; int i_gid; int i_uid; int i_mode; int i_xattr_icount; } ;
struct TYPE_8__ {int compressed_blocks; int rdev; int raw_blkaddr; } ;
struct erofs_inode_compact {TYPE_4__ i_u; int i_size; int i_nlink; int i_gid; int i_uid; int i_mode; int i_xattr_icount; int i_format; } ;
struct erofs_inode {scalar_t__ datalayout; int inode_isize; int nid; void* raw_blkaddr; void* xattr_isize; } ;
typedef int erofs_blk_t ;


 int DBG_BUGON (int) ;
 int EFSCORRUPTED ;
 int EOPNOTSUPP ;
 int EROFS_BLKSIZ ;
 struct erofs_inode* EROFS_I (struct inode*) ;
 scalar_t__ EROFS_INODE_DATALAYOUT_MAX ;


 struct erofs_sb_info* EROFS_SB (int ) ;
 int LOG_SECTORS_PER_BLOCK ;





 int S_IFMT ;


 int erofs_err (int ,char*,int,int ) ;
 scalar_t__ erofs_inode_datalayout (unsigned int const) ;
 int erofs_inode_is_data_compressed (int) ;
 int erofs_inode_version (unsigned int const) ;
 void* erofs_xattr_ibody_size (int ) ;
 int i_gid_write (struct inode*,void*) ;
 int i_uid_write (struct inode*,void*) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 void* new_decode_dev (void*) ;
 int roundup (void*,int ) ;
 int set_nlink (struct inode*,void*) ;

__attribute__((used)) static int erofs_read_inode(struct inode *inode, void *data)
{
 struct erofs_inode *vi = EROFS_I(inode);
 struct erofs_inode_compact *dic = data;
 struct erofs_inode_extended *die;

 const unsigned int ifmt = le16_to_cpu(dic->i_format);
 struct erofs_sb_info *sbi = EROFS_SB(inode->i_sb);
 erofs_blk_t nblks = 0;

 vi->datalayout = erofs_inode_datalayout(ifmt);

 if (vi->datalayout >= EROFS_INODE_DATALAYOUT_MAX) {
  erofs_err(inode->i_sb, "unsupported datalayout %u of nid %llu",
     vi->datalayout, vi->nid);
  DBG_BUGON(1);
  return -EOPNOTSUPP;
 }

 switch (erofs_inode_version(ifmt)) {
 case 135:
  die = data;

  vi->inode_isize = sizeof(struct erofs_inode_extended);
  vi->xattr_isize = erofs_xattr_ibody_size(die->i_xattr_icount);

  inode->i_mode = le16_to_cpu(die->i_mode);
  switch (inode->i_mode & S_IFMT) {
  case 129:
  case 132:
  case 130:
   vi->raw_blkaddr = le32_to_cpu(die->i_u.raw_blkaddr);
   break;
  case 133:
  case 134:
   inode->i_rdev =
    new_decode_dev(le32_to_cpu(die->i_u.rdev));
   break;
  case 131:
  case 128:
   inode->i_rdev = 0;
   break;
  default:
   goto bogusimode;
  }
  i_uid_write(inode, le32_to_cpu(die->i_uid));
  i_gid_write(inode, le32_to_cpu(die->i_gid));
  set_nlink(inode, le32_to_cpu(die->i_nlink));


  inode->i_mtime.tv_sec = inode->i_ctime.tv_sec =
   le64_to_cpu(die->i_ctime);
  inode->i_mtime.tv_nsec = inode->i_ctime.tv_nsec =
   le32_to_cpu(die->i_ctime_nsec);

  inode->i_size = le64_to_cpu(die->i_size);


  if (erofs_inode_is_data_compressed(vi->datalayout))
   nblks = le32_to_cpu(die->i_u.compressed_blocks);
  break;
 case 136:
  vi->inode_isize = sizeof(struct erofs_inode_compact);
  vi->xattr_isize = erofs_xattr_ibody_size(dic->i_xattr_icount);

  inode->i_mode = le16_to_cpu(dic->i_mode);
  switch (inode->i_mode & S_IFMT) {
  case 129:
  case 132:
  case 130:
   vi->raw_blkaddr = le32_to_cpu(dic->i_u.raw_blkaddr);
   break;
  case 133:
  case 134:
   inode->i_rdev =
    new_decode_dev(le32_to_cpu(dic->i_u.rdev));
   break;
  case 131:
  case 128:
   inode->i_rdev = 0;
   break;
  default:
   goto bogusimode;
  }
  i_uid_write(inode, le16_to_cpu(dic->i_uid));
  i_gid_write(inode, le16_to_cpu(dic->i_gid));
  set_nlink(inode, le16_to_cpu(dic->i_nlink));


  inode->i_mtime.tv_sec = inode->i_ctime.tv_sec =
   sbi->build_time;
  inode->i_mtime.tv_nsec = inode->i_ctime.tv_nsec =
   sbi->build_time_nsec;

  inode->i_size = le32_to_cpu(dic->i_size);
  if (erofs_inode_is_data_compressed(vi->datalayout))
   nblks = le32_to_cpu(dic->i_u.compressed_blocks);
  break;
 default:
  erofs_err(inode->i_sb,
     "unsupported on-disk inode version %u of nid %llu",
     erofs_inode_version(ifmt), vi->nid);
  DBG_BUGON(1);
  return -EOPNOTSUPP;
 }

 if (!nblks)

  inode->i_blocks = roundup(inode->i_size, EROFS_BLKSIZ) >> 9;
 else
  inode->i_blocks = nblks << LOG_SECTORS_PER_BLOCK;
 return 0;

bogusimode:
 erofs_err(inode->i_sb, "bogus i_mode (%o) @ nid %llu",
    inode->i_mode, vi->nid);
 DBG_BUGON(1);
 return -EFSCORRUPTED;
}
