
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwtty_port {int dummy; } ;
struct fwtty_peer {int lock; scalar_t__ guid; int unit; int list; struct fwtty_port* port; int timer; TYPE_1__* serial; int work; int connect; } ;
struct TYPE_2__ {struct fwtty_peer* self; } ;


 int FWPS_GONE ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int del_timer (int *) ;
 int fwserial_release_port (struct fwtty_port*,int) ;
 int fwtty_info (int *,char*,unsigned long long) ;
 int kfree (struct fwtty_peer*) ;
 int list_del_rcu (int *) ;
 int peer_set_state (struct fwtty_peer*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void fwserial_remove_peer(struct fwtty_peer *peer)
{
 struct fwtty_port *port;

 spin_lock_bh(&peer->lock);
 peer_set_state(peer, FWPS_GONE);
 spin_unlock_bh(&peer->lock);

 cancel_delayed_work_sync(&peer->connect);
 cancel_work_sync(&peer->work);

 spin_lock_bh(&peer->lock);

 if (peer == peer->serial->self)
  peer->serial->self = ((void*)0);


 del_timer(&peer->timer);

 port = peer->port;
 peer->port = ((void*)0);

 list_del_rcu(&peer->list);

 fwtty_info(&peer->unit, "peer removed (guid:%016llx)\n",
     (unsigned long long)peer->guid);

 spin_unlock_bh(&peer->lock);

 if (port)
  fwserial_release_port(port, 1);

 synchronize_rcu();
 kfree(peer);
}
