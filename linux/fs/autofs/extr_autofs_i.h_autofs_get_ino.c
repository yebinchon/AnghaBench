
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct autofs_sb_info {TYPE_1__* sb; } ;
struct TYPE_4__ {int i_ino; } ;
struct TYPE_3__ {int s_root; } ;


 TYPE_2__* d_inode (int ) ;

__attribute__((used)) static inline u64 autofs_get_ino(struct autofs_sb_info *sbi)
{
 return d_inode(sbi->sb->s_root)->i_ino;
}
