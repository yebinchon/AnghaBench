
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdomain {int lock; int tb; scalar_t__ receive_ring; scalar_t__ receive_path; scalar_t__ transmit_ring; scalar_t__ transmit_path; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tb_domain_disconnect_xdomain_paths (int ,struct tb_xdomain*) ;

int tb_xdomain_disable_paths(struct tb_xdomain *xd)
{
 int ret = 0;

 mutex_lock(&xd->lock);
 if (xd->transmit_path) {
  xd->transmit_path = 0;
  xd->transmit_ring = 0;
  xd->receive_path = 0;
  xd->receive_ring = 0;

  ret = tb_domain_disconnect_xdomain_paths(xd->tb, xd);
 }
 mutex_unlock(&xd->lock);

 return ret;
}
