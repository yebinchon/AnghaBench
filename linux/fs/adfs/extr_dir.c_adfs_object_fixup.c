
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct object_info {unsigned int name_len; char* name; int attr; int loadaddr; } ;
struct adfs_dir {int sb; } ;
struct TYPE_2__ {scalar_t__ s_ftsuffix; } ;


 int ADFS_FILETYPE_NONE ;
 int ADFS_NDA_DIRECTORY ;
 TYPE_1__* ADFS_SB (int ) ;
 int adfs_filetype (int ) ;
 void* hex_asc_lo (int) ;

void adfs_object_fixup(struct adfs_dir *dir, struct object_info *obj)
{
 unsigned int dots, i;
 for (i = dots = 0; i < obj->name_len; i++)
  if (obj->name[i] == '/') {
   obj->name[i] = '.';
   dots++;
  }

 if (obj->name_len <= 2 && dots == obj->name_len)
  obj->name[0] = '^';





 if (!(obj->attr & ADFS_NDA_DIRECTORY) && ADFS_SB(dir->sb)->s_ftsuffix) {
  u16 filetype = adfs_filetype(obj->loadaddr);

  if (filetype != ADFS_FILETYPE_NONE) {
   obj->name[obj->name_len++] = ',';
   obj->name[obj->name_len++] = hex_asc_lo(filetype >> 8);
   obj->name[obj->name_len++] = hex_asc_lo(filetype >> 4);
   obj->name[obj->name_len++] = hex_asc_lo(filetype >> 0);
  }
 }
}
