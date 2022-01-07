
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct asd_ocm_dir_ent {scalar_t__ type; int size; int offs; } ;
struct asd_ocm_dir {int num_de; struct asd_ocm_dir_ent* entry; } ;


 int ENOENT ;
 scalar_t__ THREE_TO_NUM (int ) ;

__attribute__((used)) static int asd_find_dir_entry(struct asd_ocm_dir *dir, u8 type,
         u32 *offs, u32 *size)
{
 int i;
 struct asd_ocm_dir_ent *ent;

 for (i = 0; i < dir->num_de; i++) {
  if (dir->entry[i].type == type)
   break;
 }
 if (i >= dir->num_de)
  return -ENOENT;
 ent = &dir->entry[i];
 *offs = (u32) THREE_TO_NUM(ent->offs);
 *size = (u32) THREE_TO_NUM(ent->size);
 return 0;
}
