
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qtail; } ;
struct ks_wlan_private {TYPE_1__ sme_i; } ;


 int SME_EVENT_BUFF_SIZE ;

__attribute__((used)) static inline void inc_smeqtail(struct ks_wlan_private *priv)
{
 priv->sme_i.qtail = (priv->sme_i.qtail + 1) % SME_EVENT_BUFF_SIZE;
}
