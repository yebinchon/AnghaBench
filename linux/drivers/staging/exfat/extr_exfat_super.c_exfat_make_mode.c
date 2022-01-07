
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int fs_dmask; int fs_fmask; } ;
struct exfat_sb_info {TYPE_1__ options; } ;
typedef int mode_t ;


 int ATTR_READONLY ;
 int ATTR_SUBDIR ;
 int ATTR_SYMLINK ;
 int S_IFDIR ;
 int S_IFLNK ;
 int S_IFREG ;

__attribute__((used)) static inline mode_t exfat_make_mode(struct exfat_sb_info *sbi, u32 attr,
         mode_t mode)
{
 if ((attr & ATTR_READONLY) && !(attr & ATTR_SUBDIR))
  mode &= ~0222;

 if (attr & ATTR_SUBDIR)
  return (mode & ~sbi->options.fs_dmask) | S_IFDIR;
 else if (attr & ATTR_SYMLINK)
  return (mode & ~sbi->options.fs_dmask) | S_IFLNK;
 else
  return (mode & ~sbi->options.fs_fmask) | S_IFREG;
}
