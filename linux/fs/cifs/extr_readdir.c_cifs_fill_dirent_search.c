
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cifs_dirent {int ino; int resume_key; int namelen; int * name; } ;
struct TYPE_3__ {int UniqueId; int FileIndex; int FileNameLength; int * FileName; } ;
typedef TYPE_1__ SEARCH_ID_FULL_DIR_INFO ;


 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void cifs_fill_dirent_search(struct cifs_dirent *de,
  const SEARCH_ID_FULL_DIR_INFO *info)
{
 de->name = &info->FileName[0];
 de->namelen = le32_to_cpu(info->FileNameLength);
 de->resume_key = info->FileIndex;
 de->ino = le64_to_cpu(info->UniqueId);
}
