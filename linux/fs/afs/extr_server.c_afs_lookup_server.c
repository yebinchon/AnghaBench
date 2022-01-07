
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct key {int dummy; } ;
struct afs_server {int usage; } ;
struct afs_cell {int net; } ;
struct afs_addr_list {int dummy; } ;


 int ENOMEM ;
 struct afs_server* ERR_CAST (struct afs_addr_list*) ;
 struct afs_server* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct afs_addr_list*) ;
 int _enter (char*,int ,int const*) ;
 int _leave (char*,struct afs_server*,int ) ;
 struct afs_server* afs_alloc_server (int ,int const*,struct afs_addr_list*) ;
 struct afs_server* afs_find_server_by_uuid (int ,int const*) ;
 struct afs_server* afs_install_server (int ,struct afs_server*) ;
 int afs_put_addrlist (struct afs_addr_list*) ;
 struct afs_addr_list* afs_vl_lookup_addrs (struct afs_cell*,struct key*,int const*) ;
 int atomic_read (int *) ;
 int kfree (struct afs_server*) ;

struct afs_server *afs_lookup_server(struct afs_cell *cell, struct key *key,
         const uuid_t *uuid)
{
 struct afs_addr_list *alist;
 struct afs_server *server, *candidate;

 _enter("%p,%pU", cell->net, uuid);

 server = afs_find_server_by_uuid(cell->net, uuid);
 if (server)
  return server;

 alist = afs_vl_lookup_addrs(cell, key, uuid);
 if (IS_ERR(alist))
  return ERR_CAST(alist);

 candidate = afs_alloc_server(cell->net, uuid, alist);
 if (!candidate) {
  afs_put_addrlist(alist);
  return ERR_PTR(-ENOMEM);
 }

 server = afs_install_server(cell->net, candidate);
 if (server != candidate) {
  afs_put_addrlist(alist);
  kfree(candidate);
 }

 _leave(" = %p{%d}", server, atomic_read(&server->usage));
 return server;
}
