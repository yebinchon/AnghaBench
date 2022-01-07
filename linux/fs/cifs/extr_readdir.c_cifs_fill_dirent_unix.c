
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cifs_dirent {int ino; int resume_key; int * name; int namelen; } ;
struct TYPE_4__ {int UniqueId; } ;
struct TYPE_5__ {TYPE_1__ basic; int ResumeKey; int * FileName; } ;
typedef TYPE_2__ FILE_UNIX_INFO ;


 int PATH_MAX ;
 int cifs_unicode_bytelen (int *) ;
 int le64_to_cpu (int ) ;
 int strnlen (int *,int ) ;

__attribute__((used)) static void cifs_fill_dirent_unix(struct cifs_dirent *de,
  const FILE_UNIX_INFO *info, bool is_unicode)
{
 de->name = &info->FileName[0];
 if (is_unicode)
  de->namelen = cifs_unicode_bytelen(de->name);
 else
  de->namelen = strnlen(de->name, PATH_MAX);
 de->resume_key = info->ResumeKey;
 de->ino = le64_to_cpu(info->basic.UniqueId);
}
