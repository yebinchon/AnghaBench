
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_pcie_ep {TYPE_1__* epc; int max_regions; } ;
struct rockchip_pcie {struct device* dev; } ;
struct device {int of_node; } ;
struct TYPE_2__ {int max_functions; } ;


 int MAX_REGION_LIMIT ;
 int of_property_read_u32 (int ,char*,int *) ;
 int of_property_read_u8 (int ,char*,int*) ;
 int rockchip_pcie_get_phys (struct rockchip_pcie*) ;
 int rockchip_pcie_parse_dt (struct rockchip_pcie*) ;

__attribute__((used)) static int rockchip_pcie_parse_ep_dt(struct rockchip_pcie *rockchip,
         struct rockchip_pcie_ep *ep)
{
 struct device *dev = rockchip->dev;
 int err;

 err = rockchip_pcie_parse_dt(rockchip);
 if (err)
  return err;

 err = rockchip_pcie_get_phys(rockchip);
 if (err)
  return err;

 err = of_property_read_u32(dev->of_node,
       "rockchip,max-outbound-regions",
       &ep->max_regions);
 if (err < 0 || ep->max_regions > MAX_REGION_LIMIT)
  ep->max_regions = MAX_REGION_LIMIT;

 err = of_property_read_u8(dev->of_node, "max-functions",
      &ep->epc->max_functions);
 if (err < 0)
  ep->epc->max_functions = 1;

 return 0;
}
