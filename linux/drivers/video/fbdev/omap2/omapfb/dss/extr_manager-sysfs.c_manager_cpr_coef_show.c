
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rr; int rg; int rb; int gr; int gg; int gb; int br; int bg; int bb; } ;
struct omap_overlay_manager_info {TYPE_1__ cpr_coefs; } ;
struct omap_overlay_manager {int (* get_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;} ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int,int,int,int,int,int,int,int,int) ;
 int stub1 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;

__attribute__((used)) static ssize_t manager_cpr_coef_show(struct omap_overlay_manager *mgr,
  char *buf)
{
 struct omap_overlay_manager_info info;

 mgr->get_manager_info(mgr, &info);

 return snprintf(buf, PAGE_SIZE,
   "%d %d %d %d %d %d %d %d %d\n",
   info.cpr_coefs.rr,
   info.cpr_coefs.rg,
   info.cpr_coefs.rb,
   info.cpr_coefs.gr,
   info.cpr_coefs.gg,
   info.cpr_coefs.gb,
   info.cpr_coefs.br,
   info.cpr_coefs.bg,
   info.cpr_coefs.bb);
}
