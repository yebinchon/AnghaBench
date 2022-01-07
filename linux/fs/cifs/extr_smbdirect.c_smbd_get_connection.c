
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct smbd_connection {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;


 int SMBD_PORT ;
 int SMB_PORT ;
 struct smbd_connection* _smbd_get_connection (struct TCP_Server_Info*,struct sockaddr*,int) ;

struct smbd_connection *smbd_get_connection(
 struct TCP_Server_Info *server, struct sockaddr *dstaddr)
{
 struct smbd_connection *ret;
 int port = SMBD_PORT;

try_again:
 ret = _smbd_get_connection(server, dstaddr, port);


 if (!ret && port == SMBD_PORT) {
  port = SMB_PORT;
  goto try_again;
 }
 return ret;
}
