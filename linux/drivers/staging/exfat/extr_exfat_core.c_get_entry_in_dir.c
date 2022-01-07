
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct super_block {int dummy; } ;
struct dentry_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef int sector_t ;
typedef int s32 ;


 scalar_t__ FFS_SUCCESS ;
 int * buf_getblk (struct super_block*,int ) ;
 scalar_t__ find_location (struct super_block*,struct chain_t*,int,int *,int*) ;

struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
      s32 entry, sector_t *sector)
{
 s32 off;
 sector_t sec;
 u8 *buf;

 if (find_location(sb, p_dir, entry, &sec, &off) != FFS_SUCCESS)
  return ((void*)0);

 buf = buf_getblk(sb, sec);

 if (!buf)
  return ((void*)0);

 if (sector)
  *sector = sec;
 return (struct dentry_t *)(buf + off);
}
