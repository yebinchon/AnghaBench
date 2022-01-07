
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TCP_Server_Info {TYPE_1__* smbd_conn; int dstaddr; } ;
struct TYPE_2__ {scalar_t__ transport_status; } ;


 int ENOENT ;
 int INFO ;
 scalar_t__ SMBD_CONNECTED ;
 int log_rdma_event (int ,char*,...) ;
 int smbd_destroy (struct TCP_Server_Info*) ;
 TYPE_1__* smbd_get_connection (struct TCP_Server_Info*,struct sockaddr*) ;

int smbd_reconnect(struct TCP_Server_Info *server)
{
 log_rdma_event(INFO, "reconnecting rdma session\n");

 if (!server->smbd_conn) {
  log_rdma_event(INFO, "rdma session already destroyed\n");
  goto create_conn;
 }





 if (server->smbd_conn->transport_status == SMBD_CONNECTED) {
  log_rdma_event(INFO, "disconnecting transport\n");
  smbd_destroy(server);
 }

create_conn:
 log_rdma_event(INFO, "creating rdma session\n");
 server->smbd_conn = smbd_get_connection(
  server, (struct sockaddr *) &server->dstaddr);
 log_rdma_event(INFO, "created rdma session info=%p\n",
  server->smbd_conn);

 return server->smbd_conn ? 0 : -ENOENT;
}
