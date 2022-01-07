
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int parent; } ;
struct TYPE_4__ {char const* name; int power_off; int power_on; } ;
struct bcm2835_power_domain {int domain; TYPE_2__ base; struct bcm2835_power* power; int * clk; } ;
struct TYPE_3__ {TYPE_2__** domains; } ;
struct bcm2835_power {TYPE_1__ pd_xlate; struct bcm2835_power_domain* domains; struct device* dev; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int bcm2835_power_pd_power_off ;
 int bcm2835_power_pd_power_on ;
 int * devm_clk_get (int ,char const*) ;
 int pm_genpd_init (TYPE_2__*,int *,int) ;

__attribute__((used)) static int
bcm2835_init_power_domain(struct bcm2835_power *power,
     int pd_xlate_index, const char *name)
{
 struct device *dev = power->dev;
 struct bcm2835_power_domain *dom = &power->domains[pd_xlate_index];

 dom->clk = devm_clk_get(dev->parent, name);
 if (IS_ERR(dom->clk)) {
  int ret = PTR_ERR(dom->clk);

  if (ret == -EPROBE_DEFER)
   return ret;




  dom->clk = ((void*)0);
 }

 dom->base.name = name;
 dom->base.power_on = bcm2835_power_pd_power_on;
 dom->base.power_off = bcm2835_power_pd_power_off;

 dom->domain = pd_xlate_index;
 dom->power = power;


 pm_genpd_init(&dom->base, ((void*)0), 1);

 power->pd_xlate.domains[pd_xlate_index] = &dom->base;

 return 0;
}
