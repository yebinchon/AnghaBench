
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int power_off; int power_on; int name; } ;
struct qmp_pd {TYPE_1__ pd; struct qmp* qmp; } ;
struct genpd_onecell_data {int num_domains; TYPE_1__** domains; } ;
struct qmp {struct device* dev; struct genpd_onecell_data pd_data; } ;
struct device {int of_node; } ;


 size_t ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 void* devm_kcalloc (struct device*,size_t,int,int ) ;
 int of_genpd_add_provider_onecell (int ,struct genpd_onecell_data*) ;
 int pm_genpd_init (TYPE_1__*,int *,int) ;
 int pm_genpd_remove (TYPE_1__*) ;
 int qmp_pd_power_off ;
 int qmp_pd_power_on ;
 int * sdm845_resources ;

__attribute__((used)) static int qmp_pd_add(struct qmp *qmp)
{
 struct genpd_onecell_data *data = &qmp->pd_data;
 struct device *dev = qmp->dev;
 struct qmp_pd *res;
 size_t num = ARRAY_SIZE(sdm845_resources);
 int ret;
 int i;

 res = devm_kcalloc(dev, num, sizeof(*res), GFP_KERNEL);
 if (!res)
  return -ENOMEM;

 data->domains = devm_kcalloc(dev, num, sizeof(*data->domains),
         GFP_KERNEL);
 if (!data->domains)
  return -ENOMEM;

 for (i = 0; i < num; i++) {
  res[i].qmp = qmp;
  res[i].pd.name = sdm845_resources[i];
  res[i].pd.power_on = qmp_pd_power_on;
  res[i].pd.power_off = qmp_pd_power_off;

  ret = pm_genpd_init(&res[i].pd, ((void*)0), 1);
  if (ret < 0) {
   dev_err(dev, "failed to init genpd\n");
   goto unroll_genpds;
  }

  data->domains[i] = &res[i].pd;
 }

 data->num_domains = i;

 ret = of_genpd_add_provider_onecell(dev->of_node, data);
 if (ret < 0)
  goto unroll_genpds;

 return 0;

unroll_genpds:
 for (i--; i >= 0; i--)
  pm_genpd_remove(data->domains[i]);

 return ret;
}
