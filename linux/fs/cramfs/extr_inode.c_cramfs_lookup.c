
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {unsigned int i_size; int i_sb; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct cramfs_inode {int namelen; } ;
struct TYPE_4__ {int flags; } ;


 int CRAMFS_FLAG_SORTED_DIRS ;
 scalar_t__ CRAMFS_MAXPATHLEN ;
 TYPE_2__* CRAMFS_SB (int ) ;
 int EIO ;
 struct inode* ERR_PTR (int ) ;
 unsigned int OFFSET (struct inode*) ;
 struct cramfs_inode* cramfs_read (int ,int,scalar_t__) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 struct inode* get_cramfs_inode (int ,struct cramfs_inode*,int) ;
 int memcmp (char*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_mutex ;

__attribute__((used)) static struct dentry *cramfs_lookup(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
 unsigned int offset = 0;
 struct inode *inode = ((void*)0);
 int sorted;

 mutex_lock(&read_mutex);
 sorted = CRAMFS_SB(dir->i_sb)->flags & CRAMFS_FLAG_SORTED_DIRS;
 while (offset < dir->i_size) {
  struct cramfs_inode *de;
  char *name;
  int namelen, retval;
  int dir_off = OFFSET(dir) + offset;

  de = cramfs_read(dir->i_sb, dir_off, sizeof(*de)+CRAMFS_MAXPATHLEN);
  name = (char *)(de+1);


  if (sorted && (dentry->d_name.name[0] < name[0]))
   break;

  namelen = de->namelen << 2;
  offset += sizeof(*de) + namelen;


  if (((dentry->d_name.len + 3) & ~3) != namelen)
   continue;

  for (;;) {
   if (!namelen) {
    inode = ERR_PTR(-EIO);
    goto out;
   }
   if (name[namelen-1])
    break;
   namelen--;
  }
  if (namelen != dentry->d_name.len)
   continue;
  retval = memcmp(dentry->d_name.name, name, namelen);
  if (retval > 0)
   continue;
  if (!retval) {
   inode = get_cramfs_inode(dir->i_sb, de, dir_off);
   break;
  }

  if (sorted)
   break;
 }
out:
 mutex_unlock(&read_mutex);
 return d_splice_alias(inode, dentry);
}
