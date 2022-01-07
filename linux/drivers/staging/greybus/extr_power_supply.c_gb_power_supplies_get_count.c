
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply_get_supplies_response {scalar_t__ supplies_count; } ;
struct gb_power_supplies {scalar_t__ supplies_count; int connection; } ;
typedef int resp ;


 int EINVAL ;
 int GB_POWER_SUPPLY_TYPE_GET_SUPPLIES ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_power_supply_get_supplies_response*,int) ;

__attribute__((used)) static int gb_power_supplies_get_count(struct gb_power_supplies *supplies)
{
 struct gb_power_supply_get_supplies_response resp;
 int ret;

 ret = gb_operation_sync(supplies->connection,
    GB_POWER_SUPPLY_TYPE_GET_SUPPLIES,
    ((void*)0), 0, &resp, sizeof(resp));
 if (ret < 0)
  return ret;

 if (!resp.supplies_count)
  return -EINVAL;

 supplies->supplies_count = resp.supplies_count;

 return ret;
}
