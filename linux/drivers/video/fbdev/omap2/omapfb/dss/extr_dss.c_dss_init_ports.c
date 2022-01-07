
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
typedef enum omap_display_type { ____Placeholder_omap_display_type } omap_display_type ;
struct TYPE_6__ {TYPE_1__* feat; } ;
struct TYPE_4__ {scalar_t__ num_ports; int* ports; } ;




 int dpi_init_port (struct platform_device*,struct device_node*) ;
 TYPE_3__ dss ;
 int dss_uninit_ports (struct platform_device*) ;
 int of_property_read_u32 (struct device_node*,char*,size_t*) ;
 struct device_node* omapdss_of_get_next_port (struct device_node*,struct device_node*) ;
 int sdi_init_port (struct platform_device*,struct device_node*) ;

__attribute__((used)) static int dss_init_ports(struct platform_device *pdev)
{
 struct device_node *parent = pdev->dev.of_node;
 struct device_node *port;
 int r, ret = 0;

 if (parent == ((void*)0))
  return 0;

 port = omapdss_of_get_next_port(parent, ((void*)0));
 if (!port)
  return 0;

 if (dss.feat->num_ports == 0)
  return 0;

 do {
  enum omap_display_type port_type;
  u32 reg;

  r = of_property_read_u32(port, "reg", &reg);
  if (r)
   reg = 0;

  if (reg >= dss.feat->num_ports)
   continue;

  port_type = dss.feat->ports[reg];

  switch (port_type) {
  case 129:
   ret = dpi_init_port(pdev, port);
   break;
  case 128:
   ret = sdi_init_port(pdev, port);
   break;
  default:
   break;
  }
 } while (!ret &&
   (port = omapdss_of_get_next_port(parent, port)) != ((void*)0));

 if (ret)
  dss_uninit_ports(pdev);

 return ret;
}
