
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_info {char* name; unsigned int name_len; int attr; void* size; void* execaddr; void* loadaddr; void* indaddr; } ;
struct adfs_direntry {char* dirobname; int newdiratts; int dirlen; int direxec; int dirload; int dirinddiscadd; } ;
struct adfs_dir {int dummy; } ;


 unsigned int ADFS_F_NAME_LEN ;
 int adfs_object_fixup (struct adfs_dir*,struct object_info*) ;
 void* adfs_readval (int ,int) ;

__attribute__((used)) static inline void
adfs_dir2obj(struct adfs_dir *dir, struct object_info *obj,
 struct adfs_direntry *de)
{
 unsigned int name_len;

 for (name_len = 0; name_len < ADFS_F_NAME_LEN; name_len++) {
  if (de->dirobname[name_len] < ' ')
   break;

  obj->name[name_len] = de->dirobname[name_len];
 }

 obj->name_len = name_len;
 obj->indaddr = adfs_readval(de->dirinddiscadd, 3);
 obj->loadaddr = adfs_readval(de->dirload, 4);
 obj->execaddr = adfs_readval(de->direxec, 4);
 obj->size = adfs_readval(de->dirlen, 4);
 obj->attr = de->newdiratts;

 adfs_object_fixup(dir, obj);
}
