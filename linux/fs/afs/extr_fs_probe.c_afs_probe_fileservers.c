
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct afs_server_list {int nr_servers; TYPE_1__* servers; } ;
struct afs_server {int flags; } ;
struct afs_net {int dummy; } ;
struct afs_error {int error; int responded; } ;
struct TYPE_2__ {struct afs_server* server; } ;


 int AFS_SERVER_FL_PROBED ;
 int AFS_SERVER_FL_PROBING ;
 scalar_t__ afs_do_probe_fileserver (struct afs_net*,struct afs_server*,struct key*,int,struct afs_error*) ;
 int test_and_set_bit_lock (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int afs_probe_fileservers(struct afs_net *net, struct key *key,
     struct afs_server_list *list)
{
 struct afs_server *server;
 struct afs_error e;
 bool in_progress = 0;
 int i;

 e.error = 0;
 e.responded = 0;
 for (i = 0; i < list->nr_servers; i++) {
  server = list->servers[i].server;
  if (test_bit(AFS_SERVER_FL_PROBED, &server->flags))
   continue;

  if (!test_and_set_bit_lock(AFS_SERVER_FL_PROBING, &server->flags) &&
      afs_do_probe_fileserver(net, server, key, i, &e))
   in_progress = 1;
 }

 return in_progress ? 0 : e.error;
}
