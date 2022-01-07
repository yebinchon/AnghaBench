
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {scalar_t__ tcpStatus; int echo_interval; int response_q; scalar_t__ lstrp; } ;


 scalar_t__ CifsGood ;
 scalar_t__ CifsNeedNegotiate ;
 int HZ ;
 int VFS ;
 int cifs_reconnect (struct TCP_Server_Info*) ;
 int cifs_server_dbg (int ,char*,int) ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int wake_up (int *) ;

__attribute__((used)) static bool
server_unresponsive(struct TCP_Server_Info *server)
{
 if ((server->tcpStatus == CifsGood ||
     server->tcpStatus == CifsNeedNegotiate) &&
     time_after(jiffies, server->lstrp + 3 * server->echo_interval)) {
  cifs_server_dbg(VFS, "has not responded in %lu seconds. Reconnecting...\n",
    (3 * server->echo_interval) / HZ);
  cifs_reconnect(server);
  wake_up(&server->response_q);
  return 1;
 }

 return 0;
}
