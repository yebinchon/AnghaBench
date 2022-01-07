
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int current_rate; int connect_status; scalar_t__ infra_status; } ;


 int DISCONNECT_STATUS ;

__attribute__((used)) static inline void hostif_status_init(struct ks_wlan_private *priv)
{
 priv->infra_status = 0;
 priv->current_rate = 4;
 priv->connect_status = DISCONNECT_STATUS;
}
