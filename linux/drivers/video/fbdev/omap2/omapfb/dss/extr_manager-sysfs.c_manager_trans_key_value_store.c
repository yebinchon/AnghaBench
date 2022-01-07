
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_overlay_manager_info {int trans_key; } ;
struct omap_overlay_manager {int (* set_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;int (* apply ) (struct omap_overlay_manager*) ;int (* get_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;} ;
typedef int ssize_t ;


 int kstrtouint (char const*,int ,int *) ;
 int stub1 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 int stub2 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 int stub3 (struct omap_overlay_manager*) ;

__attribute__((used)) static ssize_t manager_trans_key_value_store(struct omap_overlay_manager *mgr,
          const char *buf, size_t size)
{
 struct omap_overlay_manager_info info;
 u32 key_value;
 int r;

 r = kstrtouint(buf, 0, &key_value);
 if (r)
  return r;

 mgr->get_manager_info(mgr, &info);

 info.trans_key = key_value;

 r = mgr->set_manager_info(mgr, &info);
 if (r)
  return r;

 r = mgr->apply(mgr);
 if (r)
  return r;

 return size;
}
