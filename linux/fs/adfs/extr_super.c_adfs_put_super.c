
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct adfs_sb_info {int s_map_size; TYPE_1__* s_map; } ;
struct TYPE_2__ {int dm_bh; } ;


 struct adfs_sb_info* ADFS_SB (struct super_block*) ;
 int brelse (int ) ;
 int kfree (TYPE_1__*) ;
 int kfree_rcu (struct adfs_sb_info*,int ) ;
 int rcu ;

__attribute__((used)) static void adfs_put_super(struct super_block *sb)
{
 int i;
 struct adfs_sb_info *asb = ADFS_SB(sb);

 for (i = 0; i < asb->s_map_size; i++)
  brelse(asb->s_map[i].dm_bh);
 kfree(asb->s_map);
 kfree_rcu(asb, rcu);
}
