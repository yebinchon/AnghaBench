
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aspeed_p2a_ctrl {int regmap; TYPE_2__* config; } ;
struct TYPE_4__ {TYPE_1__* regions; } ;
struct TYPE_3__ {int bit; } ;


 int P2A_REGION_COUNT ;
 int SCU2C ;
 int aspeed_p2a_disable_bridge (struct aspeed_p2a_ctrl*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void aspeed_p2a_disable_all(struct aspeed_p2a_ctrl *p2a_ctrl)
{
 int i;
 u32 value = 0;

 for (i = 0; i < P2A_REGION_COUNT; i++)
  value |= p2a_ctrl->config->regions[i].bit;

 regmap_update_bits(p2a_ctrl->regmap, SCU2C, value, value);


 aspeed_p2a_disable_bridge(p2a_ctrl);
}
