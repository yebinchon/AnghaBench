
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nls_table {int dummy; } ;
struct cifs_ses {int * domainName; int * user_name; } ;
struct TYPE_2__ {char* release; } ;


 int CIFS_MAX_DOMAINNAME_LEN ;
 int CIFS_MAX_USERNAME_LEN ;
 char* CIFS_NETWORK_OPSYS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 TYPE_1__* init_utsname () ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strscpy (char*,int *,int) ;

__attribute__((used)) static void ascii_ssetup_strings(char **pbcc_area, struct cifs_ses *ses,
     const struct nls_table *nls_cp)
{
 char *bcc_ptr = *pbcc_area;
 int len;




 if (ses->user_name != ((void*)0)) {
  len = strscpy(bcc_ptr, ses->user_name, CIFS_MAX_USERNAME_LEN);
  if (WARN_ON_ONCE(len < 0))
   len = CIFS_MAX_USERNAME_LEN - 1;
  bcc_ptr += len;
 }

 *bcc_ptr = 0;
 bcc_ptr++;


 if (ses->domainName != ((void*)0)) {
  len = strscpy(bcc_ptr, ses->domainName, CIFS_MAX_DOMAINNAME_LEN);
  if (WARN_ON_ONCE(len < 0))
   len = CIFS_MAX_DOMAINNAME_LEN - 1;
  bcc_ptr += len;
 }

 *bcc_ptr = 0;
 bcc_ptr++;



 strcpy(bcc_ptr, "Linux version ");
 bcc_ptr += strlen("Linux version ");
 strcpy(bcc_ptr, init_utsname()->release);
 bcc_ptr += strlen(init_utsname()->release) + 1;

 strcpy(bcc_ptr, CIFS_NETWORK_OPSYS);
 bcc_ptr += strlen(CIFS_NETWORK_OPSYS) + 1;

 *pbcc_area = bcc_ptr;
}
