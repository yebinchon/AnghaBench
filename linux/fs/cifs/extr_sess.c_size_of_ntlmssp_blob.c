
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct cifs_ses {scalar_t__ user_name; scalar_t__ domainName; TYPE_1__ auth_key; } ;
typedef int AUTHENTICATE_MESSAGE ;


 int CIFS_CPHTXT_SIZE ;
 int CIFS_MAX_DOMAINNAME_LEN ;
 int CIFS_MAX_USERNAME_LEN ;
 int CIFS_SESS_KEY_SIZE ;
 int strnlen (scalar_t__,int ) ;

__attribute__((used)) static int size_of_ntlmssp_blob(struct cifs_ses *ses)
{
 int sz = sizeof(AUTHENTICATE_MESSAGE) + ses->auth_key.len
  - CIFS_SESS_KEY_SIZE + CIFS_CPHTXT_SIZE + 2;

 if (ses->domainName)
  sz += 2 * strnlen(ses->domainName, CIFS_MAX_DOMAINNAME_LEN);
 else
  sz += 2;

 if (ses->user_name)
  sz += 2 * strnlen(ses->user_name, CIFS_MAX_USERNAME_LEN);
 else
  sz += 2;

 return sz;
}
