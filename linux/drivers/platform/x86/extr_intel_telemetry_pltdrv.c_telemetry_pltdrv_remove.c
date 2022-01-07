
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_5__ {int regmap; } ;
struct TYPE_4__ {int regmap; } ;
struct TYPE_6__ {TYPE_2__ ioss_config; TYPE_1__ pss_config; } ;


 int iounmap (int ) ;
 int telemetry_clear_pltdata () ;
 TYPE_3__* telm_conf ;

__attribute__((used)) static int telemetry_pltdrv_remove(struct platform_device *pdev)
{
 telemetry_clear_pltdata();
 iounmap(telm_conf->pss_config.regmap);
 iounmap(telm_conf->ioss_config.regmap);

 return 0;
}
