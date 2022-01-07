
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_peer {int state; } ;



__attribute__((used)) static inline void peer_set_state(struct fwtty_peer *peer, int new)
{
 peer->state = new;
}
