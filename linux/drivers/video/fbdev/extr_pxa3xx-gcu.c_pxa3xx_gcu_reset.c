
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa3xx_gcu_priv {int shared_phys; int base_time; TYPE_1__* shared; } ;
struct TYPE_2__ {int buffer_phys; int magic; } ;


 int GCCR_ABORT ;
 int IE_ALL ;
 int IE_EOB ;
 int PXA3XX_GCU_SHARED_MAGIC ;
 int QDUMP (char*) ;
 int REG_GCCR ;
 int REG_GCIECR ;
 int REG_GCRBBR ;
 int REG_GCRBLR ;
 int REG_GCRBTR ;
 int SHARED_SIZE ;
 int gc_writel (struct pxa3xx_gcu_priv*,int ,int) ;
 int ktime_get_ts64 (int *) ;
 int memset (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
pxa3xx_gcu_reset(struct pxa3xx_gcu_priv *priv)
{
 QDUMP("RESET");


 gc_writel(priv, REG_GCIECR, 0);


 gc_writel(priv, REG_GCCR, GCCR_ABORT);
 gc_writel(priv, REG_GCCR, 0);

 memset(priv->shared, 0, SHARED_SIZE);
 priv->shared->buffer_phys = priv->shared_phys;
 priv->shared->magic = PXA3XX_GCU_SHARED_MAGIC;

 ktime_get_ts64(&priv->base_time);


 gc_writel(priv, REG_GCRBLR, 0);
 gc_writel(priv, REG_GCRBBR, priv->shared_phys);
 gc_writel(priv, REG_GCRBTR, priv->shared_phys);


 gc_writel(priv, REG_GCIECR, IE_ALL & ~IE_EOB);
}
