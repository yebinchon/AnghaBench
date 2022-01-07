
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_4__ {int (* get_power ) (struct meson_ee_pwrc_domain*) ;} ;
struct meson_ee_pwrc_domain {int base; TYPE_2__ desc; } ;
struct TYPE_3__ {int num_domains; } ;
struct meson_ee_pwrc {struct meson_ee_pwrc_domain* domains; TYPE_1__ xlate; } ;


 int meson_ee_pwrc_off (int *) ;
 struct meson_ee_pwrc* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct meson_ee_pwrc_domain*) ;

__attribute__((used)) static void meson_ee_pwrc_shutdown(struct platform_device *pdev)
{
 struct meson_ee_pwrc *pwrc = platform_get_drvdata(pdev);
 int i;

 for (i = 0 ; i < pwrc->xlate.num_domains ; ++i) {
  struct meson_ee_pwrc_domain *dom = &pwrc->domains[i];

  if (dom->desc.get_power && !dom->desc.get_power(dom))
   meson_ee_pwrc_off(&dom->base);
 }
}
