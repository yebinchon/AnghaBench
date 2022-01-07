
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int line; } ;
struct mxs_auart_port {int flags; TYPE_1__ port; } ;
struct device_node {int dummy; } ;


 int MXS_AUART_RTSCTS ;
 int dev_err (TYPE_2__*,char*,int) ;
 int of_alias_get_id (struct device_node*,char*) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int serial_mxs_probe_dt(struct mxs_auart_port *s,
  struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 int ret;

 if (!np)

  return 1;

 ret = of_alias_get_id(np, "serial");
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to get alias id: %d\n", ret);
  return ret;
 }
 s->port.line = ret;

 if (of_get_property(np, "uart-has-rtscts", ((void*)0)) ||
     of_get_property(np, "fsl,uart-has-rtscts", ((void*)0)) )
  set_bit(MXS_AUART_RTSCTS, &s->flags);

 return 0;
}
