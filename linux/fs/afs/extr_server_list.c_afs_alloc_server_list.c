
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct key {int dummy; } ;
struct afs_vldb_entry {int nr_servers; int* fs_mask; int * fs_server; } ;
struct afs_server_list {int nr_servers; TYPE_1__* servers; int lock; int usage; } ;
struct afs_server_entry {int dummy; } ;
struct afs_server {int uuid; } ;
struct afs_cell {int net; } ;
struct TYPE_3__ {struct afs_server* server; } ;


 int EDESTADDRREQ ;
 int ENOENT ;
 int ENOMEDIUM ;
 int ENOMEM ;
 struct afs_server_list* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct afs_server*) ;
 int PTR_ERR (struct afs_server*) ;
 struct afs_server* afs_lookup_server (struct afs_cell*,struct key*,int *) ;
 int afs_put_server (int ,struct afs_server*,int ) ;
 int afs_put_serverlist (int ,struct afs_server_list*) ;
 int afs_server_trace_put_slist_isort ;
 struct afs_server_list* kzalloc (int ,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;
 int refcount_set (int *,int) ;
 int rwlock_init (int *) ;
 int servers ;
 int struct_size (struct afs_server_list*,int ,int) ;

struct afs_server_list *afs_alloc_server_list(struct afs_cell *cell,
           struct key *key,
           struct afs_vldb_entry *vldb,
           u8 type_mask)
{
 struct afs_server_list *slist;
 struct afs_server *server;
 int ret = -ENOMEM, nr_servers = 0, i, j;

 for (i = 0; i < vldb->nr_servers; i++)
  if (vldb->fs_mask[i] & type_mask)
   nr_servers++;

 slist = kzalloc(struct_size(slist, servers, nr_servers), GFP_KERNEL);
 if (!slist)
  goto error;

 refcount_set(&slist->usage, 1);
 rwlock_init(&slist->lock);


 for (i = 0; i < vldb->nr_servers; i++) {
  if (!(vldb->fs_mask[i] & type_mask))
   continue;

  server = afs_lookup_server(cell, key, &vldb->fs_server[i]);
  if (IS_ERR(server)) {
   ret = PTR_ERR(server);
   if (ret == -ENOENT ||
       ret == -ENOMEDIUM)
    continue;
   goto error_2;
  }


  for (j = 0; j < slist->nr_servers; j++)
   if (memcmp(&slist->servers[j].server->uuid,
       &server->uuid,
       sizeof(server->uuid)) >= 0)
    break;
  if (j < slist->nr_servers) {
   if (slist->servers[j].server == server) {
    afs_put_server(cell->net, server,
            afs_server_trace_put_slist_isort);
    continue;
   }

   memmove(slist->servers + j + 1,
    slist->servers + j,
    (slist->nr_servers - j) * sizeof(struct afs_server_entry));
  }

  slist->servers[j].server = server;
  slist->nr_servers++;
 }

 if (slist->nr_servers == 0) {
  ret = -EDESTADDRREQ;
  goto error_2;
 }

 return slist;

error_2:
 afs_put_serverlist(cell->net, slist);
error:
 return ERR_PTR(ret);
}
