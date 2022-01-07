
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_chan {int dummy; } ;


 int rcar_gen3_check_id (struct rcar_gen3_chan*) ;
 int rcar_gen3_init_for_host (struct rcar_gen3_chan*) ;
 int rcar_gen3_init_for_peri (struct rcar_gen3_chan*) ;

__attribute__((used)) static void rcar_gen3_device_recognition(struct rcar_gen3_chan *ch)
{
 if (!rcar_gen3_check_id(ch))
  rcar_gen3_init_for_host(ch);
 else
  rcar_gen3_init_for_peri(ch);
}
