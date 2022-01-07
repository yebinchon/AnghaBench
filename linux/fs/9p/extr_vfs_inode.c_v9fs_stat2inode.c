
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int umode_t ;
struct v9fs_session_info {int dfltgid; int dfltuid; } ;
struct v9fs_inode {int cache_validity; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;
struct p9_wstat {char* extension; int length; int n_gid; int n_uid; int mtime; int atime; } ;
struct TYPE_6__ {int tv_sec; } ;
struct TYPE_5__ {int tv_sec; } ;
struct TYPE_4__ {int tv_sec; } ;
struct inode {int i_mode; int i_blocks; int i_gid; int i_uid; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; } ;
typedef int ext ;


 int S_IALLUGO ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISREG (int) ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 int V9FS_INO_INVALID_ATTR ;
 unsigned int V9FS_STAT2INODE_KEEP_ISIZE ;
 int p9mode2perm (struct v9fs_session_info*,struct p9_wstat*) ;
 int set_nlink (struct inode*,unsigned int) ;
 int sscanf (char*,char*,char*,unsigned int*) ;
 int strlcpy (char*,char*,int) ;
 int strncmp (char*,char*,int) ;
 int v9fs_i_size_write (struct inode*,int) ;
 scalar_t__ v9fs_proto_dotu (struct v9fs_session_info*) ;

void
v9fs_stat2inode(struct p9_wstat *stat, struct inode *inode,
   struct super_block *sb, unsigned int flags)
{
 umode_t mode;
 char ext[32];
 char tag_name[14];
 unsigned int i_nlink;
 struct v9fs_session_info *v9ses = sb->s_fs_info;
 struct v9fs_inode *v9inode = V9FS_I(inode);

 set_nlink(inode, 1);

 inode->i_atime.tv_sec = stat->atime;
 inode->i_mtime.tv_sec = stat->mtime;
 inode->i_ctime.tv_sec = stat->mtime;

 inode->i_uid = v9ses->dfltuid;
 inode->i_gid = v9ses->dfltgid;

 if (v9fs_proto_dotu(v9ses)) {
  inode->i_uid = stat->n_uid;
  inode->i_gid = stat->n_gid;
 }
 if ((S_ISREG(inode->i_mode)) || (S_ISDIR(inode->i_mode))) {
  if (v9fs_proto_dotu(v9ses) && (stat->extension[0] != '\0')) {







   strlcpy(ext, stat->extension, sizeof(ext));

   sscanf(ext, "%13s %u", tag_name, &i_nlink);
   if (!strncmp(tag_name, "HARDLINKCOUNT", 13))
    set_nlink(inode, i_nlink);
  }
 }
 mode = p9mode2perm(v9ses, stat);
 mode |= inode->i_mode & ~S_IALLUGO;
 inode->i_mode = mode;

 if (!(flags & V9FS_STAT2INODE_KEEP_ISIZE))
  v9fs_i_size_write(inode, stat->length);

 inode->i_blocks = (stat->length + 512 - 1) >> 9;
 v9inode->cache_validity &= ~V9FS_INO_INVALID_ATTR;
}
