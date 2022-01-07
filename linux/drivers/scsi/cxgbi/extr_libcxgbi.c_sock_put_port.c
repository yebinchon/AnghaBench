
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sin6_port; } ;
struct TYPE_4__ {scalar_t__ sin_port; } ;
struct cxgbi_sock {scalar_t__ csk_family; size_t port_id; TYPE_2__ saddr6; TYPE_1__ saddr; struct cxgbi_device* cdev; } ;
struct cxgbi_ports_map {int sport_base; int max_connect; int lock; int used; int ** port_csk; } ;
struct cxgbi_device {TYPE_3__** ports; struct cxgbi_ports_map pmap; } ;
typedef scalar_t__ __be16 ;
struct TYPE_6__ {int name; } ;


 scalar_t__ AF_INET ;
 int CXGBI_DBG_SOCK ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int log_debug (int,char*,struct cxgbi_device*,size_t,int ,int) ;
 int ntohs (scalar_t__) ;
 int pr_err (char*,struct cxgbi_device*,size_t,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sock_put_port(struct cxgbi_sock *csk)
{
 struct cxgbi_device *cdev = csk->cdev;
 struct cxgbi_ports_map *pmap = &cdev->pmap;
 __be16 *port;

 if (csk->csk_family == AF_INET)
  port = &csk->saddr.sin_port;
 else
  port = &csk->saddr6.sin6_port;

 if (*port) {
  int idx = ntohs(*port) - pmap->sport_base;

  *port = 0;
  if (idx < 0 || idx >= pmap->max_connect) {
   pr_err("cdev 0x%p, p#%u %s, port %u OOR.\n",
    cdev, csk->port_id,
    cdev->ports[csk->port_id]->name,
    ntohs(*port));
   return;
  }

  spin_lock_bh(&pmap->lock);
  pmap->port_csk[idx] = ((void*)0);
  pmap->used--;
  spin_unlock_bh(&pmap->lock);

  log_debug(1 << CXGBI_DBG_SOCK,
   "cdev 0x%p, p#%u %s, release %u.\n",
   cdev, csk->port_id, cdev->ports[csk->port_id]->name,
   pmap->sport_base + idx);

  cxgbi_sock_put(csk);
 }
}
