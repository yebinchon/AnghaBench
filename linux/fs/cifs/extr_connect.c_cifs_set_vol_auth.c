
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {scalar_t__ sectype; } ;
struct cifs_ses {scalar_t__ sectype; } ;


 scalar_t__ Kerberos ;
 int cifs_set_cifscreds (struct smb_vol*,struct cifs_ses*) ;

__attribute__((used)) static int
cifs_set_vol_auth(struct smb_vol *vol, struct cifs_ses *ses)
{
 vol->sectype = ses->sectype;


 if (vol->sectype == Kerberos)
  return 0;

 return cifs_set_cifscreds(vol, ses);
}
