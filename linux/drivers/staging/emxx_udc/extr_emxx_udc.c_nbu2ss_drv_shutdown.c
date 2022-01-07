
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct nbu2ss_udc {int dummy; } ;


 int _nbu2ss_disable_controller (struct nbu2ss_udc*) ;
 struct nbu2ss_udc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void nbu2ss_drv_shutdown(struct platform_device *pdev)
{
 struct nbu2ss_udc *udc;

 udc = platform_get_drvdata(pdev);
 if (!udc)
  return;

 _nbu2ss_disable_controller(udc);
}
