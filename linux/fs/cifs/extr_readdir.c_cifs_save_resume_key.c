
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_dirent {int resume_key; int namelen; int name; } ;
struct TYPE_2__ {int resume_key; int resume_name_len; int presume_name; int unicode; int info_level; } ;
struct cifsFileInfo {TYPE_1__ srch_inf; } ;


 int cifs_fill_dirent (struct cifs_dirent*,char const*,int ,int ) ;

__attribute__((used)) static int cifs_save_resume_key(const char *current_entry,
 struct cifsFileInfo *file_info)
{
 struct cifs_dirent de;
 int rc;

 rc = cifs_fill_dirent(&de, current_entry, file_info->srch_inf.info_level,
         file_info->srch_inf.unicode);
 if (!rc) {
  file_info->srch_inf.presume_name = de.name;
  file_info->srch_inf.resume_name_len = de.namelen;
  file_info->srch_inf.resume_key = de.resume_key;
 }
 return rc;
}
