
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int dummy; } ;
struct cxgbi_ports_map {unsigned int max_connect; unsigned int sport_base; int lock; int port_csk; } ;
struct cxgbi_device {struct cxgbi_ports_map pmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cxgbi_alloc_big_mem (unsigned int,int ) ;
 int pr_warn (char*,struct cxgbi_device*,unsigned int) ;
 int spin_lock_init (int *) ;

int cxgbi_device_portmap_create(struct cxgbi_device *cdev, unsigned int base,
    unsigned int max_conn)
{
 struct cxgbi_ports_map *pmap = &cdev->pmap;

 pmap->port_csk = cxgbi_alloc_big_mem(max_conn *
          sizeof(struct cxgbi_sock *),
          GFP_KERNEL);
 if (!pmap->port_csk) {
  pr_warn("cdev 0x%p, portmap OOM %u.\n", cdev, max_conn);
  return -ENOMEM;
 }

 pmap->max_connect = max_conn;
 pmap->sport_base = base;
 spin_lock_init(&pmap->lock);
 return 0;
}
