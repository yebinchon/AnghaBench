
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int (* power_off ) (TYPE_1__*) ;} ;
struct meson_gx_pwrc_vpu {TYPE_1__ genpd; } ;


 int meson_gx_pwrc_vpu_get_power (struct meson_gx_pwrc_vpu*) ;
 struct meson_gx_pwrc_vpu* platform_get_drvdata (struct platform_device*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void meson_gx_pwrc_vpu_shutdown(struct platform_device *pdev)
{
 struct meson_gx_pwrc_vpu *vpu_pd = platform_get_drvdata(pdev);
 bool powered_off;

 powered_off = meson_gx_pwrc_vpu_get_power(vpu_pd);
 if (!powered_off)
  vpu_pd->genpd.power_off(&vpu_pd->genpd);
}
