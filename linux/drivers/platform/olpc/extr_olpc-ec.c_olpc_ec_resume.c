
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct olpc_ec_priv {int suspended; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* resume ) (struct platform_device*) ;} ;


 TYPE_1__* ec_driver ;
 struct olpc_ec_priv* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int olpc_ec_resume(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct olpc_ec_priv *ec = platform_get_drvdata(pdev);

 ec->suspended = 0;
 return ec_driver->resume ? ec_driver->resume(pdev) : 0;
}
