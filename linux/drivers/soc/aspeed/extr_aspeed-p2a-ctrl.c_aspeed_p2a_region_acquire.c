
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct region {scalar_t__ max; scalar_t__ min; int bit; } ;
struct aspeed_p2a_user {int* readwrite; } ;
struct aspeed_p2a_ctrl_mapping {scalar_t__ addr; int length; } ;
struct aspeed_p2a_ctrl {int* readerwriters; int regmap; int tracking; TYPE_1__* config; } ;
struct TYPE_2__ {struct region* regions; } ;


 int P2A_REGION_COUNT ;
 int SCU2C ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static bool aspeed_p2a_region_acquire(struct aspeed_p2a_user *priv,
  struct aspeed_p2a_ctrl *ctrl,
  struct aspeed_p2a_ctrl_mapping *map)
{
 int i;
 u64 base, end;
 bool matched = 0;

 base = map->addr;
 end = map->addr + (map->length - 1);


 for (i = 0; i < P2A_REGION_COUNT; i++) {
  const struct region *curr = &ctrl->config->regions[i];



  if (curr->max < base)
   continue;



  if (curr->min > end)
   break;




  mutex_lock(&ctrl->tracking);
  ctrl->readerwriters[i] += 1;
  mutex_unlock(&ctrl->tracking);




  priv->readwrite[i] += 1;


  regmap_update_bits(ctrl->regmap, SCU2C, curr->bit, 0);
  matched = 1;
 }

 return matched;
}
