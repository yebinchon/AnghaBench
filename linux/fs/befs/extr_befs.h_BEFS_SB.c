
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_fs_info; } ;
struct befs_sb_info {int dummy; } ;



__attribute__((used)) static inline struct befs_sb_info *
BEFS_SB(const struct super_block *super)
{
 return (struct befs_sb_info *) super->s_fs_info;
}
