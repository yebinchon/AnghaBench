
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pxa3xx_gcu_priv {TYPE_1__* shared; int wait_idle; } ;
struct TYPE_2__ {int num_interrupts; scalar_t__ hw_running; int num_wait_idle; } ;


 int ETIMEDOUT ;
 int HZ ;
 int QDUMP (char*) ;
 int QERROR (char*) ;
 int REG_GCRBEXHR ;
 scalar_t__ gc_readl (struct pxa3xx_gcu_priv*,int ) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int
pxa3xx_gcu_wait_idle(struct pxa3xx_gcu_priv *priv)
{
 int ret = 0;

 QDUMP("Waiting for idle...");



 priv->shared->num_wait_idle++;

 while (priv->shared->hw_running) {
  int num = priv->shared->num_interrupts;
  u32 rbexhr = gc_readl(priv, REG_GCRBEXHR);

  ret = wait_event_interruptible_timeout(priv->wait_idle,
     !priv->shared->hw_running, HZ*4);

  if (ret != 0)
   break;

  if (gc_readl(priv, REG_GCRBEXHR) == rbexhr &&
      priv->shared->num_interrupts == num) {
   QERROR("TIMEOUT");
   ret = -ETIMEDOUT;
   break;
  }
 }

 QDUMP("done");

 return ret;
}
