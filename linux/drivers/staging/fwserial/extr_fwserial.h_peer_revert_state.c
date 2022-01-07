
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_port {int dummy; } ;
struct fwtty_peer {struct fwtty_port* port; } ;


 int FWPS_NOT_ATTACHED ;
 int peer_set_state (struct fwtty_peer*,int ) ;

__attribute__((used)) static inline struct fwtty_port *peer_revert_state(struct fwtty_peer *peer)
{
 struct fwtty_port *port = peer->port;

 peer->port = ((void*)0);
 peer_set_state(peer, FWPS_NOT_ATTACHED);
 return port;
}
