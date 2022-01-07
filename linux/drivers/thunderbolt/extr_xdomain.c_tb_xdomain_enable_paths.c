
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tb_xdomain {scalar_t__ transmit_path; int lock; int tb; scalar_t__ receive_ring; scalar_t__ receive_path; scalar_t__ transmit_ring; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tb_domain_approve_xdomain_paths (int ,struct tb_xdomain*) ;

int tb_xdomain_enable_paths(struct tb_xdomain *xd, u16 transmit_path,
       u16 transmit_ring, u16 receive_path,
       u16 receive_ring)
{
 int ret;

 mutex_lock(&xd->lock);

 if (xd->transmit_path) {
  ret = xd->transmit_path == transmit_path ? 0 : -EBUSY;
  goto exit_unlock;
 }

 xd->transmit_path = transmit_path;
 xd->transmit_ring = transmit_ring;
 xd->receive_path = receive_path;
 xd->receive_ring = receive_ring;

 ret = tb_domain_approve_xdomain_paths(xd->tb, xd);

exit_unlock:
 mutex_unlock(&xd->lock);

 return ret;
}
