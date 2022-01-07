
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_csk; scalar_t__ max_connect; } ;
struct cxgbi_device {TYPE_1__ pmap; int (* cdev2ppm ) (struct cxgbi_device*) ;int nports; } ;


 int CXGBI_DBG_DEV ;
 int cxgbi_device_portmap_cleanup (struct cxgbi_device*) ;
 int cxgbi_free_big_mem (int ) ;
 int cxgbi_hbas_remove (struct cxgbi_device*) ;
 int cxgbi_ppm_release (int ) ;
 int kfree (struct cxgbi_device*) ;
 int log_debug (int,char*,struct cxgbi_device*,int ) ;
 int stub1 (struct cxgbi_device*) ;

__attribute__((used)) static inline void cxgbi_device_destroy(struct cxgbi_device *cdev)
{
 log_debug(1 << CXGBI_DBG_DEV,
  "cdev 0x%p, p# %u.\n", cdev, cdev->nports);
 cxgbi_hbas_remove(cdev);
 cxgbi_device_portmap_cleanup(cdev);
 cxgbi_ppm_release(cdev->cdev2ppm(cdev));
 if (cdev->pmap.max_connect)
  cxgbi_free_big_mem(cdev->pmap.port_csk);
 kfree(cdev);
}
