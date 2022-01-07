
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {unsigned int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct dir_context {unsigned int pos; } ;
struct cramfs_inode {int namelen; int mode; } ;
typedef int ino_t ;


 scalar_t__ CRAMFS_MAXPATHLEN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ OFFSET (struct inode*) ;
 struct cramfs_inode* cramfs_read (struct super_block*,scalar_t__,scalar_t__) ;
 int cramino (struct cramfs_inode*,scalar_t__) ;
 int dir_emit (struct dir_context*,char*,int,int ,int) ;
 struct inode* file_inode (struct file*) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 int memcpy (char*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_mutex ;

__attribute__((used)) static int cramfs_readdir(struct file *file, struct dir_context *ctx)
{
 struct inode *inode = file_inode(file);
 struct super_block *sb = inode->i_sb;
 char *buf;
 unsigned int offset;


 if (ctx->pos >= inode->i_size)
  return 0;
 offset = ctx->pos;

 if (offset & 3)
  return -EINVAL;

 buf = kmalloc(CRAMFS_MAXPATHLEN, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 while (offset < inode->i_size) {
  struct cramfs_inode *de;
  unsigned long nextoffset;
  char *name;
  ino_t ino;
  umode_t mode;
  int namelen;

  mutex_lock(&read_mutex);
  de = cramfs_read(sb, OFFSET(inode) + offset, sizeof(*de)+CRAMFS_MAXPATHLEN);
  name = (char *)(de+1);






  namelen = de->namelen << 2;
  memcpy(buf, name, namelen);
  ino = cramino(de, OFFSET(inode) + offset);
  mode = de->mode;
  mutex_unlock(&read_mutex);
  nextoffset = offset + sizeof(*de) + namelen;
  for (;;) {
   if (!namelen) {
    kfree(buf);
    return -EIO;
   }
   if (buf[namelen-1])
    break;
   namelen--;
  }
  if (!dir_emit(ctx, buf, namelen, ino, mode >> 12))
   break;

  ctx->pos = offset = nextoffset;
 }
 kfree(buf);
 return 0;
}
