
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ci; int ce_be; int ce; } ;
struct bm_portal {TYPE_1__ addr; } ;
struct bman_portal {struct bm_portal_config const* config; int irqname; scalar_t__ irq_sources; struct bm_portal p; } ;
struct bm_portal_config {int irq; int dev; int cpu; int addr_virt_ci; int addr_virt_ce; } ;


 int BM_REG_IER ;
 int BM_REG_IIR ;
 int BM_REG_ISDR ;
 int BM_REG_ISR ;
 int EIO ;
 char* IRQNAME ;
 int MAX_IRQNAME ;
 int bm_isr_bscn_disable (struct bm_portal*) ;
 int bm_mc_finish (struct bm_portal*) ;
 scalar_t__ bm_mc_init (struct bm_portal*) ;
 int bm_out (struct bm_portal*,int ,int) ;
 int bm_rcr_cce ;
 int bm_rcr_finish (struct bm_portal*) ;
 int bm_rcr_get_fill (struct bm_portal*) ;
 scalar_t__ bm_rcr_init (struct bm_portal*,int ,int ) ;
 int bm_rcr_pvb ;
 int dev_err (int ,char*) ;
 scalar_t__ dpaa_set_portal_irq_affinity (int ,int ,int ) ;
 int free_irq (int ,struct bman_portal*) ;
 int portal_isr ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct bman_portal*) ;
 int snprintf (int ,int ,char*,int ) ;

__attribute__((used)) static int bman_create_portal(struct bman_portal *portal,
         const struct bm_portal_config *c)
{
 struct bm_portal *p;
 int ret;

 p = &portal->p;





 p->addr.ce = c->addr_virt_ce;
 p->addr.ce_be = c->addr_virt_ce;
 p->addr.ci = c->addr_virt_ci;
 if (bm_rcr_init(p, bm_rcr_pvb, bm_rcr_cce)) {
  dev_err(c->dev, "RCR initialisation failed\n");
  goto fail_rcr;
 }
 if (bm_mc_init(p)) {
  dev_err(c->dev, "MC initialisation failed\n");
  goto fail_mc;
 }




 bm_isr_bscn_disable(p);


 bm_out(p, BM_REG_ISDR, 0xffffffff);
 portal->irq_sources = 0;
 bm_out(p, BM_REG_IER, 0);
 bm_out(p, BM_REG_ISR, 0xffffffff);
 snprintf(portal->irqname, MAX_IRQNAME, IRQNAME, c->cpu);
 if (request_irq(c->irq, portal_isr, 0, portal->irqname, portal)) {
  dev_err(c->dev, "request_irq() failed\n");
  goto fail_irq;
 }

 if (dpaa_set_portal_irq_affinity(c->dev, c->irq, c->cpu))
  goto fail_affinity;


 ret = bm_rcr_get_fill(p);
 if (ret) {
  dev_err(c->dev, "RCR unclean\n");
  goto fail_rcr_empty;
 }

 portal->config = c;

 bm_out(p, BM_REG_ISDR, 0);
 bm_out(p, BM_REG_IIR, 0);

 return 0;

fail_rcr_empty:
fail_affinity:
 free_irq(c->irq, portal);
fail_irq:
 bm_mc_finish(p);
fail_mc:
 bm_rcr_finish(p);
fail_rcr:
 return -EIO;
}
