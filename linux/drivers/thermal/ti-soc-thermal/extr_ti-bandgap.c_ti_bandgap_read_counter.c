
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_bandgap {int clk_rate; TYPE_2__* conf; } ;
struct temp_sensor_registers {int counter_mask; int bgap_counter; } ;
struct TYPE_4__ {TYPE_1__* sensors; } ;
struct TYPE_3__ {struct temp_sensor_registers* registers; } ;


 int __ffs (int) ;
 int ti_bandgap_readl (struct ti_bandgap*,int ) ;

__attribute__((used)) static void ti_bandgap_read_counter(struct ti_bandgap *bgp, int id,
        int *interval)
{
 struct temp_sensor_registers *tsr;
 int time;

 tsr = bgp->conf->sensors[id].registers;
 time = ti_bandgap_readl(bgp, tsr->bgap_counter);
 time = (time & tsr->counter_mask) >>
     __ffs(tsr->counter_mask);
 time = time * 1000 / bgp->clk_rate;
 *interval = time;
}
