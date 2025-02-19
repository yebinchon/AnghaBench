
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct device {int dummy; } ;
struct apple_gmux_data {scalar_t__ power_state; } ;


 scalar_t__ VGA_SWITCHEROO_OFF ;
 int gmux_enable_interrupts (struct apple_gmux_data*) ;
 int gmux_set_discrete_state (struct apple_gmux_data*,scalar_t__) ;
 int gmux_write_switch_state (struct apple_gmux_data*) ;
 struct apple_gmux_data* pnp_get_drvdata (struct pnp_dev*) ;
 struct pnp_dev* to_pnp_dev (struct device*) ;

__attribute__((used)) static int gmux_resume(struct device *dev)
{
 struct pnp_dev *pnp = to_pnp_dev(dev);
 struct apple_gmux_data *gmux_data = pnp_get_drvdata(pnp);

 gmux_enable_interrupts(gmux_data);
 gmux_write_switch_state(gmux_data);
 if (gmux_data->power_state == VGA_SWITCHEROO_OFF)
  gmux_set_discrete_state(gmux_data, gmux_data->power_state);
 return 0;
}
