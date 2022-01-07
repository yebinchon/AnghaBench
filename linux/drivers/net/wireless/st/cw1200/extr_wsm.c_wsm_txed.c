
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; int * ptr; } ;
struct cw1200_common {TYPE_1__ wsm_cmd; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void wsm_txed(struct cw1200_common *priv, u8 *data)
{
 if (data == priv->wsm_cmd.ptr) {
  spin_lock(&priv->wsm_cmd.lock);
  priv->wsm_cmd.ptr = ((void*)0);
  spin_unlock(&priv->wsm_cmd.lock);
 }
}
