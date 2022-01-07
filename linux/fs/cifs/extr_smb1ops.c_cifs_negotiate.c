
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_ses {int server; } ;


 int CIFSSMBNegotiate (unsigned int const,struct cifs_ses*) ;
 int EAGAIN ;
 int EHOSTDOWN ;
 int set_credits (int ,int) ;

__attribute__((used)) static int
cifs_negotiate(const unsigned int xid, struct cifs_ses *ses)
{
 int rc;
 rc = CIFSSMBNegotiate(xid, ses);
 if (rc == -EAGAIN) {

  set_credits(ses->server, 1);
  rc = CIFSSMBNegotiate(xid, ses);
  if (rc == -EAGAIN)
   rc = -EHOSTDOWN;
 }
 return rc;
}
