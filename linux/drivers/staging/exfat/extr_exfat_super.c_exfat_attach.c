
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct hlist_head {int dummy; } ;
struct exfat_sb_info {int inode_hash_lock; struct hlist_head* inode_hashtable; } ;
typedef int loff_t ;
struct TYPE_2__ {int i_hash_fat; int i_pos; } ;


 TYPE_1__* EXFAT_I (struct inode*) ;
 struct exfat_sb_info* EXFAT_SB (int ) ;
 int exfat_hash (int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void exfat_attach(struct inode *inode, loff_t i_pos)
{
 struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
 struct hlist_head *head = sbi->inode_hashtable + exfat_hash(i_pos);

 spin_lock(&sbi->inode_hash_lock);
 EXFAT_I(inode)->i_pos = i_pos;
 hlist_add_head(&EXFAT_I(inode)->i_hash_fat, head);
 spin_unlock(&sbi->inode_hash_lock);
}
