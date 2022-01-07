
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {void (* framedone_handler ) (void*) ;void* framedone_handler_data; } ;


 int EBUSY ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;

__attribute__((used)) static int dss_mgr_register_framedone_handler_compat(struct omap_overlay_manager *mgr,
  void (*handler)(void *), void *data)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);

 if (mp->framedone_handler)
  return -EBUSY;

 mp->framedone_handler = handler;
 mp->framedone_handler_data = data;

 return 0;
}
