
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager_info {int trans_key_type; } ;
struct omap_overlay_manager {int (* get_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;} ;
typedef int ssize_t ;
typedef enum omap_dss_trans_key_type { ____Placeholder_omap_dss_trans_key_type } omap_dss_trans_key_type ;


 int ARRAY_SIZE (char**) ;
 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 int stub1 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 char** trans_key_type_str ;

__attribute__((used)) static ssize_t manager_trans_key_type_show(struct omap_overlay_manager *mgr,
        char *buf)
{
 enum omap_dss_trans_key_type key_type;
 struct omap_overlay_manager_info info;

 mgr->get_manager_info(mgr, &info);

 key_type = info.trans_key_type;
 BUG_ON(key_type >= ARRAY_SIZE(trans_key_type_str));

 return snprintf(buf, PAGE_SIZE, "%s\n", trans_key_type_str[key_type]);
}
