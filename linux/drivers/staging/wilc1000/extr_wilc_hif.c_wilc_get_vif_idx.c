
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {int idx; } ;



int wilc_get_vif_idx(struct wilc_vif *vif)
{
 return vif->idx + 1;
}
