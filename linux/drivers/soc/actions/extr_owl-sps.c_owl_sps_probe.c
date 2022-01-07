
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int of_node; TYPE_1__* driver; } ;
struct platform_device {TYPE_2__ dev; } ;
struct owl_sps_info {int num_domains; } ;
struct TYPE_8__ {int num_domains; int domains; } ;
struct owl_sps {TYPE_3__ genpd_data; int domains; struct owl_sps_info const* info; TYPE_2__* dev; int base; } ;
struct of_device_id {struct owl_sps_info* data; } ;
struct TYPE_6__ {int of_match_table; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct owl_sps* devm_kzalloc (TYPE_2__*,int ,int ) ;
 int domains ;
 int of_genpd_add_provider_onecell (int ,TYPE_3__*) ;
 int of_io_request_and_map (int ,int ,char*) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int owl_sps_init_domain (struct owl_sps*,int) ;
 int struct_size (struct owl_sps*,int ,int) ;

__attribute__((used)) static int owl_sps_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 const struct owl_sps_info *sps_info;
 struct owl_sps *sps;
 int i, ret;

 if (!pdev->dev.of_node) {
  dev_err(&pdev->dev, "no device node\n");
  return -ENODEV;
 }

 match = of_match_device(pdev->dev.driver->of_match_table, &pdev->dev);
 if (!match || !match->data) {
  dev_err(&pdev->dev, "unknown compatible or missing data\n");
  return -EINVAL;
 }

 sps_info = match->data;

 sps = devm_kzalloc(&pdev->dev,
      struct_size(sps, domains, sps_info->num_domains),
      GFP_KERNEL);
 if (!sps)
  return -ENOMEM;

 sps->base = of_io_request_and_map(pdev->dev.of_node, 0, "owl-sps");
 if (IS_ERR(sps->base)) {
  dev_err(&pdev->dev, "failed to map sps registers\n");
  return PTR_ERR(sps->base);
 }

 sps->dev = &pdev->dev;
 sps->info = sps_info;
 sps->genpd_data.domains = sps->domains;
 sps->genpd_data.num_domains = sps_info->num_domains;

 for (i = 0; i < sps_info->num_domains; i++) {
  ret = owl_sps_init_domain(sps, i);
  if (ret)
   return ret;
 }

 ret = of_genpd_add_provider_onecell(pdev->dev.of_node, &sps->genpd_data);
 if (ret) {
  dev_err(&pdev->dev, "failed to add provider (%d)", ret);
  return ret;
 }

 return 0;
}
