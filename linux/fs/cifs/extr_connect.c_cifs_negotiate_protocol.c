
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_ses {struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* negotiate ) (unsigned int const,struct cifs_ses*) ;int (* need_neg ) (struct TCP_Server_Info*) ;} ;


 scalar_t__ CifsGood ;
 scalar_t__ CifsNeedNegotiate ;
 int EHOSTDOWN ;
 int ENOSYS ;
 int GlobalMid_Lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct TCP_Server_Info*) ;
 int stub2 (unsigned int const,struct cifs_ses*) ;

int
cifs_negotiate_protocol(const unsigned int xid, struct cifs_ses *ses)
{
 int rc = 0;
 struct TCP_Server_Info *server = ses->server;

 if (!server->ops->need_neg || !server->ops->negotiate)
  return -ENOSYS;


 if (!server->ops->need_neg(server))
  return 0;

 rc = server->ops->negotiate(xid, ses);
 if (rc == 0) {
  spin_lock(&GlobalMid_Lock);
  if (server->tcpStatus == CifsNeedNegotiate)
   server->tcpStatus = CifsGood;
  else
   rc = -EHOSTDOWN;
  spin_unlock(&GlobalMid_Lock);
 }

 return rc;
}
