
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {int dummy; } ;
struct wilc {int vif_num; struct wilc_vif** vif; } ;


 int EINVAL ;
 struct wilc_vif* ERR_PTR (int ) ;

__attribute__((used)) static struct wilc_vif *wilc_get_wl_to_vif(struct wilc *wl)
{
 int i;

 for (i = 0; i < wl->vif_num; i++)
  if (wl->vif[i])
   return wl->vif[i];

 return ERR_PTR(-EINVAL);
}
