
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {void (* framedone_handler ) (void*) ;void* framedone_handler_data; } ;


 int WARN_ON (int) ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;

__attribute__((used)) static void dss_mgr_unregister_framedone_handler_compat(struct omap_overlay_manager *mgr,
  void (*handler)(void *), void *data)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);

 WARN_ON(mp->framedone_handler != handler ||
   mp->framedone_handler_data != data);

 mp->framedone_handler = ((void*)0);
 mp->framedone_handler_data = ((void*)0);
}
