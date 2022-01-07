
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct exfat_sb_info {int * inode_hashtable; int inode_hash_lock; } ;


 int EXFAT_HASH_SIZE ;
 struct exfat_sb_info* EXFAT_SB (struct super_block*) ;
 int INIT_HLIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void exfat_hash_init(struct super_block *sb)
{
 struct exfat_sb_info *sbi = EXFAT_SB(sb);
 int i;

 spin_lock_init(&sbi->inode_hash_lock);
 for (i = 0; i < EXFAT_HASH_SIZE; i++)
  INIT_HLIST_HEAD(&sbi->inode_hashtable[i]);
}
