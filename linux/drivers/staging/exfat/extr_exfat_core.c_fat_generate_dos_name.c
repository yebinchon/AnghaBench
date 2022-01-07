
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {int dentries_in_root; int dentries_per_clu; TYPE_1__* fs_func; scalar_t__ dev_ejected; } ;
struct dos_name_t {int name; } ;
struct dos_dentry_t {char* name; } ;
struct dentry_t {int dummy; } ;
struct chain_t {scalar_t__ dir; int flags; } ;
typedef int s32 ;
typedef int bmap ;
struct TYPE_4__ {struct fs_info_t fs_info; } ;
struct TYPE_3__ {scalar_t__ (* get_entry_type ) (struct dentry_t*) ;} ;


 scalar_t__ CLUSTER_32 (int ) ;
 TYPE_2__* EXFAT_SB (struct super_block*) ;
 scalar_t__ FAT_read (struct super_block*,scalar_t__,scalar_t__*) ;
 int FFS_FILEEXIST ;
 int FFS_MEDIAERR ;
 int FFS_SUCCESS ;
 scalar_t__ TYPE_DIR ;
 scalar_t__ TYPE_FILE ;
 scalar_t__ TYPE_UNUSED ;
 int exfat_bitmap_set (int*,int) ;
 scalar_t__ exfat_bitmap_test (int*,int) ;
 int fat_attach_count_to_dos_name (int ,int) ;
 scalar_t__ get_entry_in_dir (struct super_block*,struct chain_t*,int,int *) ;
 int memset (int*,int ,int) ;
 scalar_t__ stub1 (struct dentry_t*) ;

s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
     struct dos_name_t *p_dosname)
{
 int i, j, count = 0;
 bool count_begin = 0;
 s32 dentries_per_clu;
 u32 type;
 u8 bmap[128 ];
 struct chain_t clu;
 struct dos_dentry_t *ep;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 memset(bmap, 0, sizeof(bmap));
 exfat_bitmap_set(bmap, 0);

 if (p_dir->dir == CLUSTER_32(0))
  dentries_per_clu = p_fs->dentries_in_root;
 else
  dentries_per_clu = p_fs->dentries_per_clu;

 clu.dir = p_dir->dir;
 clu.flags = p_dir->flags;

 while (clu.dir != CLUSTER_32(~0)) {
  if (p_fs->dev_ejected)
   break;

  for (i = 0; i < dentries_per_clu; i++) {
   ep = (struct dos_dentry_t *)get_entry_in_dir(sb, &clu,
             i, ((void*)0));
   if (!ep)
    return FFS_MEDIAERR;

   type = p_fs->fs_func->get_entry_type((struct dentry_t *)
            ep);

   if (type == TYPE_UNUSED)
    break;
   if ((type != TYPE_FILE) && (type != TYPE_DIR))
    continue;

   count = 0;
   count_begin = 0;

   for (j = 0; j < 8; j++) {
    if (ep->name[j] == ' ')
     break;

    if (ep->name[j] == '~') {
     count_begin = 1;
    } else if (count_begin) {
     if ((ep->name[j] >= '0') &&
         (ep->name[j] <= '9')) {
      count = count * 10 +
       (ep->name[j] - '0');
     } else {
      count = 0;
      count_begin = 0;
     }
    }
   }

   if ((count > 0) && (count < 1024))
    exfat_bitmap_set(bmap, count);
  }

  if (p_dir->dir == CLUSTER_32(0))
   break;

  if (FAT_read(sb, clu.dir, &clu.dir) != 0)
   return FFS_MEDIAERR;
 }

 count = 0;
 for (i = 0; i < 128; i++) {
  if (bmap[i] != 0xFF) {
   for (j = 0; j < 8; j++) {
    if (exfat_bitmap_test(&bmap[i], j) == 0) {
     count = (i << 3) + j;
     break;
    }
   }
   if (count != 0)
    break;
  }
 }

 if ((count == 0) || (count >= 1024))
  return FFS_FILEEXIST;
 fat_attach_count_to_dos_name(p_dosname->name, count);


 return FFS_SUCCESS;
}
