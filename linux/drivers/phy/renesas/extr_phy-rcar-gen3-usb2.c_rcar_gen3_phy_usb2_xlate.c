
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_gen3_chan {TYPE_1__* rphys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {int args_count; size_t* args; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct phy* phy; } ;


 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 size_t NUM_OF_PHYS ;
 size_t PHY_INDEX_BOTH_HC ;
 struct rcar_gen3_chan* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *rcar_gen3_phy_usb2_xlate(struct device *dev,
         struct of_phandle_args *args)
{
 struct rcar_gen3_chan *ch = dev_get_drvdata(dev);

 if (args->args_count == 0)
  return ch->rphys[PHY_INDEX_BOTH_HC].phy;
 else if (args->args_count > 1)
  return ERR_PTR(-ENODEV);

 if (args->args[0] >= NUM_OF_PHYS)
  return ERR_PTR(-ENODEV);

 return ch->rphys[args->args[0]].phy;
}
