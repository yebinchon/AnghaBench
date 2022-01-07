
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* is_path_accessible ) (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,char*) ;} ;


 char CIFS_DIR_SEP (struct cifs_sb_info*) ;
 int stub1 (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,char*) ;
 int stub2 (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,char*) ;

__attribute__((used)) static int
cifs_are_all_path_components_accessible(struct TCP_Server_Info *server,
     unsigned int xid,
     struct cifs_tcon *tcon,
     struct cifs_sb_info *cifs_sb,
     char *full_path,
     int added_treename)
{
 int rc;
 char *s;
 char sep, tmp;
 int skip = added_treename ? 1 : 0;

 sep = CIFS_DIR_SEP(cifs_sb);
 s = full_path;

 rc = server->ops->is_path_accessible(xid, tcon, cifs_sb, "");
 while (rc == 0) {

  while (*s == sep)
   s++;
  if (!*s)
   break;

  while (*s && *s != sep)
   s++;




  if (skip) {
   skip = 0;
   continue;
  }




  tmp = *s;
  *s = 0;
  rc = server->ops->is_path_accessible(xid, tcon, cifs_sb,
           full_path);
  *s = tmp;
 }
 return rc;
}
