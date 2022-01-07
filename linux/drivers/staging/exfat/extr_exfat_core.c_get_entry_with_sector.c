
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct super_block {int dummy; } ;
struct dentry_t {int dummy; } ;
typedef int sector_t ;
typedef int s32 ;


 int * buf_getblk (struct super_block*,int ) ;

struct dentry_t *get_entry_with_sector(struct super_block *sb, sector_t sector,
           s32 offset)
{
 u8 *buf;

 buf = buf_getblk(sb, sector);

 if (!buf)
  return ((void*)0);

 return (struct dentry_t *)(buf + offset);
}
