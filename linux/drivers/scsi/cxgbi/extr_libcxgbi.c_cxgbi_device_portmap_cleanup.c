
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int lock; } ;
struct cxgbi_ports_map {int max_connect; struct cxgbi_sock** port_csk; } ;
struct cxgbi_device {struct cxgbi_ports_map pmap; } ;


 int CTPF_OFFLOAD_DOWN ;
 int CXGBI_DBG_SOCK ;
 int cxgbi_sock_closed (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int cxgbi_sock_set_flag (struct cxgbi_sock*,int ) ;
 int log_debug (int,char*,struct cxgbi_sock*,struct cxgbi_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void cxgbi_device_portmap_cleanup(struct cxgbi_device *cdev)
{
 struct cxgbi_ports_map *pmap = &cdev->pmap;
 struct cxgbi_sock *csk;
 int i;

 for (i = 0; i < pmap->max_connect; i++) {
  if (pmap->port_csk[i]) {
   csk = pmap->port_csk[i];
   pmap->port_csk[i] = ((void*)0);
   log_debug(1 << CXGBI_DBG_SOCK,
    "csk 0x%p, cdev 0x%p, offload down.\n",
    csk, cdev);
   spin_lock_bh(&csk->lock);
   cxgbi_sock_set_flag(csk, CTPF_OFFLOAD_DOWN);
   cxgbi_sock_closed(csk);
   spin_unlock_bh(&csk->lock);
   cxgbi_sock_put(csk);
  }
 }
}
