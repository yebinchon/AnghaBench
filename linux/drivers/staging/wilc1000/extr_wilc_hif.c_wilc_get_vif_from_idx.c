
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {int dummy; } ;
struct wilc {struct wilc_vif** vif; } ;


 int WILC_NUM_CONCURRENT_IFC ;

__attribute__((used)) static struct wilc_vif *wilc_get_vif_from_idx(struct wilc *wilc, int idx)
{
 int index = idx - 1;

 if (index < 0 || index >= WILC_NUM_CONCURRENT_IFC)
  return ((void*)0);

 return wilc->vif[index];
}
