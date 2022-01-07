
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_ses {TYPE_1__* server; } ;
struct TYPE_2__ {scalar_t__ CurrentMid; } ;


 int EAGAIN ;
 int EHOSTDOWN ;
 int SMB2_negotiate (unsigned int const,struct cifs_ses*) ;

__attribute__((used)) static int
smb2_negotiate(const unsigned int xid, struct cifs_ses *ses)
{
 int rc;

 ses->server->CurrentMid = 0;
 rc = SMB2_negotiate(xid, ses);

 if (rc == -EAGAIN)
  rc = -EHOSTDOWN;
 return rc;
}
