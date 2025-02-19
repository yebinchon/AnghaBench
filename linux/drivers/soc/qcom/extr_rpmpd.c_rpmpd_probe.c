
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct rpmpd_desc {size_t num_pds; int max_state; struct rpmpd** rpmpds; } ;
struct TYPE_8__ {int opp_to_performance_state; int set_performance_state; int power_on; int power_off; } ;
struct rpmpd {TYPE_1__ pd; int max_state; struct qcom_smd_rpm* rpm; } ;
struct qcom_smd_rpm {int dummy; } ;
struct TYPE_9__ {int of_node; int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct genpd_onecell_data {size_t num_domains; TYPE_1__** domains; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*) ;
 struct qcom_smd_rpm* dev_get_drvdata (int ) ;
 int dev_warn (TYPE_2__*,char*,int) ;
 TYPE_1__** devm_kcalloc (TYPE_2__*,size_t,int,int ) ;
 struct genpd_onecell_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct rpmpd_desc* of_device_get_match_data (TYPE_2__*) ;
 int of_genpd_add_provider_onecell (int ,struct genpd_onecell_data*) ;
 int pm_genpd_init (TYPE_1__*,int *,int) ;
 int rpmpd_get_performance ;
 int rpmpd_power_off ;
 int rpmpd_power_on ;
 int rpmpd_set_performance ;

__attribute__((used)) static int rpmpd_probe(struct platform_device *pdev)
{
 int i;
 size_t num;
 struct genpd_onecell_data *data;
 struct qcom_smd_rpm *rpm;
 struct rpmpd **rpmpds;
 const struct rpmpd_desc *desc;

 rpm = dev_get_drvdata(pdev->dev.parent);
 if (!rpm) {
  dev_err(&pdev->dev, "Unable to retrieve handle to RPM\n");
  return -ENODEV;
 }

 desc = of_device_get_match_data(&pdev->dev);
 if (!desc)
  return -EINVAL;

 rpmpds = desc->rpmpds;
 num = desc->num_pds;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->domains = devm_kcalloc(&pdev->dev, num, sizeof(*data->domains),
         GFP_KERNEL);
 data->num_domains = num;

 for (i = 0; i < num; i++) {
  if (!rpmpds[i]) {
   dev_warn(&pdev->dev, "rpmpds[] with empty entry at index=%d\n",
     i);
   continue;
  }

  rpmpds[i]->rpm = rpm;
  rpmpds[i]->max_state = desc->max_state;
  rpmpds[i]->pd.power_off = rpmpd_power_off;
  rpmpds[i]->pd.power_on = rpmpd_power_on;
  rpmpds[i]->pd.set_performance_state = rpmpd_set_performance;
  rpmpds[i]->pd.opp_to_performance_state = rpmpd_get_performance;
  pm_genpd_init(&rpmpds[i]->pd, ((void*)0), 1);

  data->domains[i] = &rpmpds[i]->pd;
 }

 return of_genpd_add_provider_onecell(pdev->dev.of_node, data);
}
