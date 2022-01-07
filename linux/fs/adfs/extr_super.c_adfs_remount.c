
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct adfs_sb_info {int dummy; } ;


 struct adfs_sb_info* ADFS_SB (struct super_block*) ;
 int ADFS_SB_FLAGS ;
 int parse_options (struct super_block*,struct adfs_sb_info*,char*) ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int adfs_remount(struct super_block *sb, int *flags, char *data)
{
 struct adfs_sb_info temp_asb;
 int ret;

 sync_filesystem(sb);
 *flags |= ADFS_SB_FLAGS;

 temp_asb = *ADFS_SB(sb);
 ret = parse_options(sb, &temp_asb, data);
 if (ret == 0)
  *ADFS_SB(sb) = temp_asb;

 return ret;
}
