
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwtty_transaction {int fw_txn; struct fwtty_port* port; int callback; } ;
struct fwtty_port {int dummy; } ;
struct fwtty_peer {int generation; int speed; int node_id; TYPE_1__* serial; } ;
typedef int fwtty_transaction_cb ;
struct TYPE_2__ {int card; } ;


 int fw_send_request (int ,int *,int,int ,int,int ,unsigned long long,void*,size_t,int ,struct fwtty_transaction*) ;
 int fwtty_common_callback ;
 int smp_rmb () ;

__attribute__((used)) static void fwtty_send_txn_async(struct fwtty_peer *peer,
     struct fwtty_transaction *txn, int tcode,
     unsigned long long addr, void *payload,
     size_t len, fwtty_transaction_cb callback,
     struct fwtty_port *port)
{
 int generation;

 txn->callback = callback;
 txn->port = port;

 generation = peer->generation;
 smp_rmb();
 fw_send_request(peer->serial->card, &txn->fw_txn, tcode,
   peer->node_id, generation, peer->speed, addr, payload,
   len, fwtty_common_callback, txn);
}
