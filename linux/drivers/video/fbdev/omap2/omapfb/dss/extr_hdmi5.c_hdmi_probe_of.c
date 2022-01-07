
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int phy; } ;


 TYPE_2__ hdmi ;
 int hdmi_parse_lanes_of (struct platform_device*,struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* omapdss_of_get_first_endpoint (struct device_node*) ;

__attribute__((used)) static int hdmi_probe_of(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct device_node *ep;
 int r;

 ep = omapdss_of_get_first_endpoint(node);
 if (!ep)
  return 0;

 r = hdmi_parse_lanes_of(pdev, ep, &hdmi.phy);
 if (r)
  goto err;

 of_node_put(ep);
 return 0;

err:
 of_node_put(ep);
 return r;
}
