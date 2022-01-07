
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pxa3xx_gcu_priv {int free; int wait_free; TYPE_1__* shared; } ;
struct TYPE_2__ {int num_wait_free; } ;


 int ETIMEDOUT ;
 int HZ ;
 int QDUMP (char*) ;
 int QERROR (char*) ;
 int REG_GCRBEXHR ;
 scalar_t__ gc_readl (struct pxa3xx_gcu_priv*,int ) ;
 int wait_event_interruptible_timeout (int ,int ,int) ;

__attribute__((used)) static int
pxa3xx_gcu_wait_free(struct pxa3xx_gcu_priv *priv)
{
 int ret = 0;

 QDUMP("Waiting for free...");



 priv->shared->num_wait_free++;

 while (!priv->free) {
  u32 rbexhr = gc_readl(priv, REG_GCRBEXHR);

  ret = wait_event_interruptible_timeout(priv->wait_free,
             priv->free, HZ*4);

  if (ret < 0)
   break;

  if (ret > 0)
   continue;

  if (gc_readl(priv, REG_GCRBEXHR) == rbexhr) {
   QERROR("TIMEOUT");
   ret = -ETIMEDOUT;
   break;
  }
 }

 QDUMP("done");

 return ret;
}
