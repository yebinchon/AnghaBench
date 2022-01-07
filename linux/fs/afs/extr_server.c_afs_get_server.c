
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_server {int usage; } ;
typedef enum afs_server_trace { ____Placeholder_afs_server_trace } afs_server_trace ;


 unsigned int atomic_inc_return (int *) ;
 int trace_afs_server (struct afs_server*,unsigned int,int) ;

struct afs_server *afs_get_server(struct afs_server *server,
      enum afs_server_trace reason)
{
 unsigned int u = atomic_inc_return(&server->usage);

 trace_afs_server(server, u, reason);
 return server;
}
