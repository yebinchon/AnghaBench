
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_bandgap {int dev; TYPE_2__* conf; } ;
struct temp_sensor_registers {int mask_counter_delay_mask; int bgap_mask_ctrl; } ;
struct TYPE_4__ {TYPE_1__* sensors; } ;
struct TYPE_3__ {struct temp_sensor_registers* registers; } ;


 int __ffs (int) ;
 int dev_warn (int ,char*,int) ;
 int ti_bandgap_readl (struct ti_bandgap*,int ) ;

__attribute__((used)) static void ti_bandgap_read_counter_delay(struct ti_bandgap *bgp, int id,
       int *interval)
{
 struct temp_sensor_registers *tsr;
 int reg_val;

 tsr = bgp->conf->sensors[id].registers;

 reg_val = ti_bandgap_readl(bgp, tsr->bgap_mask_ctrl);
 reg_val = (reg_val & tsr->mask_counter_delay_mask) >>
    __ffs(tsr->mask_counter_delay_mask);
 switch (reg_val) {
 case 0:
  *interval = 0;
  break;
 case 1:
  *interval = 1;
  break;
 case 2:
  *interval = 10;
  break;
 case 3:
  *interval = 100;
  break;
 case 4:
  *interval = 250;
  break;
 case 5:
  *interval = 500;
  break;
 default:
  dev_warn(bgp->dev, "Wrong counter delay value read from register %X",
    reg_val);
 }
}
