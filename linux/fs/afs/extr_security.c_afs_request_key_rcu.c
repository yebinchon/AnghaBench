
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int description; } ;
struct afs_cell {struct key* anonymous_key; TYPE_1__* net; } ;
struct TYPE_2__ {int net; } ;


 int ENOKEY ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int _debug (char*,int ) ;
 int _enter (char*,int ) ;
 int _leave (char*,int ) ;
 struct key* key_get (struct key*) ;
 int key_serial (struct key*) ;
 int key_type_rxrpc ;
 struct key* request_key_net_rcu (int *,int ,int ) ;

struct key *afs_request_key_rcu(struct afs_cell *cell)
{
 struct key *key;

 _enter("{%x}", key_serial(cell->anonymous_key));

 _debug("key %s", cell->anonymous_key->description);
 key = request_key_net_rcu(&key_type_rxrpc,
      cell->anonymous_key->description,
      cell->net->net);
 if (IS_ERR(key)) {
  if (PTR_ERR(key) != -ENOKEY) {
   _leave(" = %ld", PTR_ERR(key));
   return key;
  }


  _leave(" = {%x} [anon]", key_serial(cell->anonymous_key));
  return key_get(cell->anonymous_key);
 } else {

  _leave(" = {%x} [auth]", key_serial(key));
  return key;
 }
}
