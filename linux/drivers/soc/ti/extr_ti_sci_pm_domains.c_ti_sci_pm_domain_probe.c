
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stop; int start; } ;
struct TYPE_5__ {char* name; TYPE_1__ dev_ops; int detach_dev; int attach_dev; } ;
struct ti_sci_pm_domain {TYPE_2__ pd; struct device* dev; int ti_sci; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct ti_sci_pm_domain* devm_kzalloc (struct device*,int,int ) ;
 int devm_ti_sci_get_handle (struct device*) ;
 int of_genpd_add_provider_simple (struct device_node*,TYPE_2__*) ;
 int pm_genpd_init (TYPE_2__*,int *,int) ;
 int ti_sci_dev_start ;
 int ti_sci_dev_stop ;
 int ti_sci_pd_attach_dev ;
 int ti_sci_pd_detach_dev ;

__attribute__((used)) static int ti_sci_pm_domain_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct ti_sci_pm_domain *ti_sci_pd;
 int ret;

 ti_sci_pd = devm_kzalloc(dev, sizeof(*ti_sci_pd), GFP_KERNEL);
 if (!ti_sci_pd)
  return -ENOMEM;

 ti_sci_pd->ti_sci = devm_ti_sci_get_handle(dev);
 if (IS_ERR(ti_sci_pd->ti_sci))
  return PTR_ERR(ti_sci_pd->ti_sci);

 ti_sci_pd->dev = dev;

 ti_sci_pd->pd.name = "ti_sci_pd";

 ti_sci_pd->pd.attach_dev = ti_sci_pd_attach_dev;
 ti_sci_pd->pd.detach_dev = ti_sci_pd_detach_dev;

 ti_sci_pd->pd.dev_ops.start = ti_sci_dev_start;
 ti_sci_pd->pd.dev_ops.stop = ti_sci_dev_stop;

 pm_genpd_init(&ti_sci_pd->pd, ((void*)0), 1);

 ret = of_genpd_add_provider_simple(np, &ti_sci_pd->pd);

 return ret;
}
