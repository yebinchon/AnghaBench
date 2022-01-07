
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct exfat_sb_info {int inode_hash_lock; } ;
struct TYPE_2__ {scalar_t__ i_pos; int i_hash_fat; } ;


 TYPE_1__* EXFAT_I (struct inode*) ;
 struct exfat_sb_info* EXFAT_SB (int ) ;
 int hlist_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void exfat_detach(struct inode *inode)
{
 struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);

 spin_lock(&sbi->inode_hash_lock);
 hlist_del_init(&EXFAT_I(inode)->i_hash_fat);
 EXFAT_I(inode)->i_pos = 0;
 spin_unlock(&sbi->inode_hash_lock);
}
