
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {scalar_t__ sectype; char* username; char* password; int nullauth; int cred_uid; } ;
struct cifs_ses {int sectype; int * password; int * user_name; int cred_uid; } ;


 int CIFS_MAX_PASSWORD_LEN ;
 int CIFS_MAX_USERNAME_LEN ;

 scalar_t__ Unspecified ;
 int strlen (char*) ;
 int strncmp (int *,char*,int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int match_session(struct cifs_ses *ses, struct smb_vol *vol)
{
 if (vol->sectype != Unspecified &&
     vol->sectype != ses->sectype)
  return 0;

 switch (ses->sectype) {
 case 128:
  if (!uid_eq(vol->cred_uid, ses->cred_uid))
   return 0;
  break;
 default:

  if (ses->user_name == ((void*)0)) {
   if (!vol->nullauth)
    return 0;
   break;
  }


  if (strncmp(ses->user_name,
       vol->username ? vol->username : "",
       CIFS_MAX_USERNAME_LEN))
   return 0;
  if ((vol->username && strlen(vol->username) != 0) &&
      ses->password != ((void*)0) &&
      strncmp(ses->password,
       vol->password ? vol->password : "",
       CIFS_MAX_PASSWORD_LEN))
   return 0;
 }
 return 1;
}
