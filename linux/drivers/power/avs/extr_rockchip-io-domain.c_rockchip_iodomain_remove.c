
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_iodomain_supply {int nb; scalar_t__ reg; } ;
struct rockchip_iodomain {struct rockchip_iodomain_supply* supplies; } ;
struct platform_device {int dummy; } ;


 int MAX_SUPPLIES ;
 struct rockchip_iodomain* platform_get_drvdata (struct platform_device*) ;
 int regulator_unregister_notifier (scalar_t__,int *) ;

__attribute__((used)) static int rockchip_iodomain_remove(struct platform_device *pdev)
{
 struct rockchip_iodomain *iod = platform_get_drvdata(pdev);
 int i;

 for (i = MAX_SUPPLIES - 1; i >= 0; i--) {
  struct rockchip_iodomain_supply *io_supply = &iod->supplies[i];

  if (io_supply->reg)
   regulator_unregister_notifier(io_supply->reg,
            &io_supply->nb);
 }

 return 0;
}
