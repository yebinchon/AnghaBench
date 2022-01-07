
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* rtllib; } ;
struct TYPE_2__ {int dev; } ;


 int _rtl92e_tx_resume (int ) ;

__attribute__((used)) static void _rtl92e_irq_tx_tasklet(struct r8192_priv *priv)
{
 _rtl92e_tx_resume(priv->rtllib->dev);
}
