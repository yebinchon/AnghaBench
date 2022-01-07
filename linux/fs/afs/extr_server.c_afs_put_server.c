
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_server {int usage; int put_time; } ;
struct afs_net {int dummy; } ;
typedef enum afs_server_trace { ____Placeholder_afs_server_trace } afs_server_trace ;


 int afs_server_gc_delay ;
 int afs_set_server_timer (struct afs_net*,int ) ;
 unsigned int atomic_dec_return (int *) ;
 int ktime_get_real_seconds () ;
 scalar_t__ likely (int) ;
 int trace_afs_server (struct afs_server*,unsigned int,int) ;

void afs_put_server(struct afs_net *net, struct afs_server *server,
      enum afs_server_trace reason)
{
 unsigned int usage;

 if (!server)
  return;

 server->put_time = ktime_get_real_seconds();

 usage = atomic_dec_return(&server->usage);

 trace_afs_server(server, usage, reason);

 if (likely(usage > 0))
  return;

 afs_set_server_timer(net, afs_server_gc_delay);
}
