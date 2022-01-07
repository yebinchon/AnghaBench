
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ideapad_private {int * rfk; } ;


 int rfkill_destroy (int ) ;
 int rfkill_unregister (int ) ;

__attribute__((used)) static void ideapad_unregister_rfkill(struct ideapad_private *priv, int dev)
{
 if (!priv->rfk[dev])
  return;

 rfkill_unregister(priv->rfk[dev]);
 rfkill_destroy(priv->rfk[dev]);
}
