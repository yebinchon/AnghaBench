
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int credits; int req_lock; int reconnect_instance; } ;


 int FYI ;
 int cifs_dbg (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
smb2_set_credits(struct TCP_Server_Info *server, const int val)
{
 spin_lock(&server->req_lock);
 server->credits = val;
 if (val == 1)
  server->reconnect_instance++;
 spin_unlock(&server->req_lock);

 if (val == 1)
  cifs_dbg(FYI, "set credits to 1 due to smb2 reconnect\n");
}
