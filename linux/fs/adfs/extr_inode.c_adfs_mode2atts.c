
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int i_mode; } ;
struct adfs_sb_info {int s_owner_mask; int s_other_mask; } ;
struct TYPE_2__ {int attr; } ;


 TYPE_1__* ADFS_I (struct inode*) ;
 int ADFS_NDA_DIRECTORY ;
 int ADFS_NDA_OWNER_READ ;
 int ADFS_NDA_OWNER_WRITE ;
 int ADFS_NDA_PUBLIC_READ ;
 int ADFS_NDA_PUBLIC_WRITE ;
 struct adfs_sb_info* ADFS_SB (struct super_block*) ;
 int S_IRUGO ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 int S_IWUGO ;

__attribute__((used)) static int
adfs_mode2atts(struct super_block *sb, struct inode *inode)
{
 umode_t mode;
 int attr;
 struct adfs_sb_info *asb = ADFS_SB(sb);


 if (S_ISLNK(inode->i_mode))
  return ADFS_I(inode)->attr;

 if (S_ISDIR(inode->i_mode))
  attr = ADFS_NDA_DIRECTORY;
 else
  attr = 0;

 mode = inode->i_mode & asb->s_owner_mask;
 if (mode & S_IRUGO)
  attr |= ADFS_NDA_OWNER_READ;
 if (mode & S_IWUGO)
  attr |= ADFS_NDA_OWNER_WRITE;

 mode = inode->i_mode & asb->s_other_mask;
 mode &= ~asb->s_owner_mask;
 if (mode & S_IRUGO)
  attr |= ADFS_NDA_PUBLIC_READ;
 if (mode & S_IWUGO)
  attr |= ADFS_NDA_PUBLIC_WRITE;

 return attr;
}
