
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_chan {int dummy; } ;


 int rcar_gen3_control_otg_irq (struct rcar_gen3_chan*,int) ;
 int rcar_gen3_enable_vbus_ctrl (struct rcar_gen3_chan*,int) ;
 int rcar_gen3_init_for_host (struct rcar_gen3_chan*) ;

__attribute__((used)) static void rcar_gen3_init_from_a_peri_to_a_host(struct rcar_gen3_chan *ch)
{
 rcar_gen3_control_otg_irq(ch, 0);

 rcar_gen3_enable_vbus_ctrl(ch, 1);
 rcar_gen3_init_for_host(ch);

 rcar_gen3_control_otg_irq(ch, 1);
}
