
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cifs_dirent {int resume_key; int namelen; int * name; } ;
struct TYPE_3__ {int ResumeKey; int FileNameLength; int * FileName; } ;
typedef TYPE_1__ FIND_FILE_STANDARD_INFO ;



__attribute__((used)) static void cifs_fill_dirent_std(struct cifs_dirent *de,
  const FIND_FILE_STANDARD_INFO *info)
{
 de->name = &info->FileName[0];

 de->namelen = info->FileNameLength;
 de->resume_key = info->ResumeKey;
}
