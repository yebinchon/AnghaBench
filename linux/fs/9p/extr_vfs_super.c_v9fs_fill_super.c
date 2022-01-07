
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_session_info {int flags; scalar_t__ cache; scalar_t__ maxdata; } ;
struct super_block {int s_blocksize_bits; int s_blocksize; int s_flags; TYPE_1__* s_bdi; scalar_t__ s_time_min; int s_time_max; int * s_op; int s_xattr; int s_magic; int s_maxbytes; } ;
struct TYPE_2__ {int ra_pages; } ;


 int MAX_LFS_FILESIZE ;
 int SB_ACTIVE ;
 int SB_DIRSYNC ;
 int SB_POSIXACL ;
 int SB_SYNCHRONOUS ;
 int U32_MAX ;
 int V9FS_ACL_MASK ;
 int V9FS_MAGIC ;
 int V9FS_POSIX_ACL ;
 int VM_READAHEAD_PAGES ;
 int fls (scalar_t__) ;
 int super_setup_bdi (struct super_block*) ;
 scalar_t__ v9fs_proto_dotl (struct v9fs_session_info*) ;
 int v9fs_super_ops ;
 int v9fs_super_ops_dotl ;
 int v9fs_xattr_handlers ;

__attribute__((used)) static int
v9fs_fill_super(struct super_block *sb, struct v9fs_session_info *v9ses,
  int flags)
{
 int ret;

 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize_bits = fls(v9ses->maxdata - 1);
 sb->s_blocksize = 1 << sb->s_blocksize_bits;
 sb->s_magic = V9FS_MAGIC;
 if (v9fs_proto_dotl(v9ses)) {
  sb->s_op = &v9fs_super_ops_dotl;
  sb->s_xattr = v9fs_xattr_handlers;
 } else {
  sb->s_op = &v9fs_super_ops;
  sb->s_time_max = U32_MAX;
 }

 sb->s_time_min = 0;

 ret = super_setup_bdi(sb);
 if (ret)
  return ret;

 if (v9ses->cache)
  sb->s_bdi->ra_pages = VM_READAHEAD_PAGES;

 sb->s_flags |= SB_ACTIVE | SB_DIRSYNC;
 if (!v9ses->cache)
  sb->s_flags |= SB_SYNCHRONOUS;






 return 0;
}
