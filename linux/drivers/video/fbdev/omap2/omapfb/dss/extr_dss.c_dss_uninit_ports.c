
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
typedef enum omap_display_type { ____Placeholder_omap_display_type } omap_display_type ;
struct TYPE_6__ {TYPE_2__* feat; } ;
struct TYPE_5__ {scalar_t__ num_ports; int* ports; } ;




 int dpi_uninit_port (struct device_node*) ;
 TYPE_3__ dss ;
 int of_property_read_u32 (struct device_node*,char*,size_t*) ;
 struct device_node* omapdss_of_get_next_port (struct device_node*,struct device_node*) ;
 int sdi_uninit_port (struct device_node*) ;

__attribute__((used)) static void dss_uninit_ports(struct platform_device *pdev)
{
 struct device_node *parent = pdev->dev.of_node;
 struct device_node *port;

 if (parent == ((void*)0))
  return;

 port = omapdss_of_get_next_port(parent, ((void*)0));
 if (!port)
  return;

 if (dss.feat->num_ports == 0)
  return;

 do {
  enum omap_display_type port_type;
  u32 reg;
  int r;

  r = of_property_read_u32(port, "reg", &reg);
  if (r)
   reg = 0;

  if (reg >= dss.feat->num_ports)
   continue;

  port_type = dss.feat->ports[reg];

  switch (port_type) {
  case 129:
   dpi_uninit_port(port);
   break;
  case 128:
   sdi_uninit_port(port);
   break;
  default:
   break;
  }
 } while ((port = omapdss_of_get_next_port(parent, port)) != ((void*)0));
}
