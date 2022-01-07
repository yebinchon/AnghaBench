
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imxdi_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_emerg (int *,char*,char const*) ;

__attribute__((used)) static void di_what_is_to_be_done(struct imxdi_dev *imxdi,
      const char *power_supply)
{
 dev_emerg(&imxdi->pdev->dev, "Please cycle the %s power supply in order to get the DryIce/RTC unit working again\n",
    power_supply);
}
