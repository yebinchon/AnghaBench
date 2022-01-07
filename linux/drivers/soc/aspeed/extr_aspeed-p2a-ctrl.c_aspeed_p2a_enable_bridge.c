
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_p2a_ctrl {int regmap; } ;


 int SCU180 ;
 int SCU180_ENP2A ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void aspeed_p2a_enable_bridge(struct aspeed_p2a_ctrl *p2a_ctrl)
{
 regmap_update_bits(p2a_ctrl->regmap,
  SCU180, SCU180_ENP2A, SCU180_ENP2A);
}
