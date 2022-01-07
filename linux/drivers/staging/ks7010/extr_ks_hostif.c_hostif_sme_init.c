
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sme_flag; int sme_spin; scalar_t__ qtail; scalar_t__ qhead; int sme_status; } ;
struct ks_wlan_private {int sme_task; TYPE_1__ sme_i; } ;


 int SME_IDLE ;
 int hostif_sme_task ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static inline void hostif_sme_init(struct ks_wlan_private *priv)
{
 priv->sme_i.sme_status = SME_IDLE;
 priv->sme_i.qhead = 0;
 priv->sme_i.qtail = 0;
 spin_lock_init(&priv->sme_i.sme_spin);
 priv->sme_i.sme_flag = 0;
 tasklet_init(&priv->sme_task, hostif_sme_task, (unsigned long)priv);
}
