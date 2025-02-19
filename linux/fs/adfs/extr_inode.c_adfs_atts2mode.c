
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct adfs_sb_info {int s_owner_mask; int s_other_mask; } ;
struct TYPE_2__ {unsigned int attr; int loadaddr; } ;


 TYPE_1__* ADFS_I (struct inode*) ;
 unsigned int ADFS_NDA_DIRECTORY ;
 unsigned int ADFS_NDA_OWNER_READ ;
 unsigned int ADFS_NDA_OWNER_WRITE ;
 unsigned int ADFS_NDA_PUBLIC_READ ;
 unsigned int ADFS_NDA_PUBLIC_WRITE ;
 struct adfs_sb_info* ADFS_SB (struct super_block*) ;
 int S_IFDIR ;
 int S_IFLNK ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IRWXUGO ;
 int S_IWUGO ;
 int S_IXUGO ;
 int adfs_filetype (int ) ;

__attribute__((used)) static umode_t
adfs_atts2mode(struct super_block *sb, struct inode *inode)
{
 unsigned int attr = ADFS_I(inode)->attr;
 umode_t mode, rmask;
 struct adfs_sb_info *asb = ADFS_SB(sb);

 if (attr & ADFS_NDA_DIRECTORY) {
  mode = S_IRUGO & asb->s_owner_mask;
  return S_IFDIR | S_IXUGO | mode;
 }

 switch (adfs_filetype(ADFS_I(inode)->loadaddr)) {
 case 0xfc0:
  return S_IFLNK|S_IRWXUGO;

 case 0xfe6:
  rmask = S_IRUGO | S_IXUGO;
  break;

 default:
  rmask = S_IRUGO;
 }

 mode = S_IFREG;

 if (attr & ADFS_NDA_OWNER_READ)
  mode |= rmask & asb->s_owner_mask;

 if (attr & ADFS_NDA_OWNER_WRITE)
  mode |= S_IWUGO & asb->s_owner_mask;

 if (attr & ADFS_NDA_PUBLIC_READ)
  mode |= rmask & asb->s_other_mask;

 if (attr & ADFS_NDA_PUBLIC_WRITE)
  mode |= S_IWUGO & asb->s_other_mask;
 return mode;
}
