
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmhpd {unsigned int corner; unsigned int active_corner; scalar_t__ enabled; struct rpmhpd* peer; } ;


 int RPMH_ACTIVE_ONLY_STATE ;
 int RPMH_SLEEP_STATE ;
 int RPMH_WAKE_ONLY_STATE ;
 unsigned int max (unsigned int,unsigned int) ;
 int rpmhpd_send_corner (struct rpmhpd*,int ,unsigned int,int) ;
 int to_active_sleep (struct rpmhpd*,unsigned int,unsigned int*,unsigned int*) ;

__attribute__((used)) static int rpmhpd_aggregate_corner(struct rpmhpd *pd, unsigned int corner)
{
 int ret;
 struct rpmhpd *peer = pd->peer;
 unsigned int active_corner, sleep_corner;
 unsigned int this_active_corner = 0, this_sleep_corner = 0;
 unsigned int peer_active_corner = 0, peer_sleep_corner = 0;

 to_active_sleep(pd, corner, &this_active_corner, &this_sleep_corner);

 if (peer && peer->enabled)
  to_active_sleep(peer, peer->corner, &peer_active_corner,
    &peer_sleep_corner);

 active_corner = max(this_active_corner, peer_active_corner);

 ret = rpmhpd_send_corner(pd, RPMH_ACTIVE_ONLY_STATE, active_corner,
     active_corner > pd->active_corner);
 if (ret)
  return ret;

 pd->active_corner = active_corner;

 if (peer) {
  peer->active_corner = active_corner;

  ret = rpmhpd_send_corner(pd, RPMH_WAKE_ONLY_STATE,
      active_corner, 0);
  if (ret)
   return ret;

  sleep_corner = max(this_sleep_corner, peer_sleep_corner);

  return rpmhpd_send_corner(pd, RPMH_SLEEP_STATE, sleep_corner,
       0);
 }

 return ret;
}
