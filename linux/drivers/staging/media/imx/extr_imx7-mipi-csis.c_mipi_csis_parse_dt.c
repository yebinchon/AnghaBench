
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct csi_state {int hs_settle; int mrst; int clk_frequency; } ;


 int DEFAULT_SCLK_CSIS_FREQ ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_reset_control_get_exclusive (TYPE_1__*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int mipi_csis_parse_dt(struct platform_device *pdev,
         struct csi_state *state)
{
 struct device_node *node = pdev->dev.of_node;

 if (of_property_read_u32(node, "clock-frequency",
     &state->clk_frequency))
  state->clk_frequency = DEFAULT_SCLK_CSIS_FREQ;


 state->mrst = devm_reset_control_get_exclusive(&pdev->dev, "mrst");
 if (IS_ERR(state->mrst))
  return PTR_ERR(state->mrst);


 of_property_read_u32(node, "fsl,csis-hs-settle", &state->hs_settle);

 return 0;
}
