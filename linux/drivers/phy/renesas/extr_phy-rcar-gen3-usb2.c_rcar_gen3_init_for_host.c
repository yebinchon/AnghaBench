
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_chan {int extcon_host; int work; } ;


 int rcar_gen3_enable_vbus_ctrl (struct rcar_gen3_chan*,int) ;
 int rcar_gen3_set_host_mode (struct rcar_gen3_chan*,int) ;
 int rcar_gen3_set_linectrl (struct rcar_gen3_chan*,int,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static void rcar_gen3_init_for_host(struct rcar_gen3_chan *ch)
{
 rcar_gen3_set_linectrl(ch, 1, 1);
 rcar_gen3_set_host_mode(ch, 1);
 rcar_gen3_enable_vbus_ctrl(ch, 1);

 ch->extcon_host = 1;
 schedule_work(&ch->work);
}
