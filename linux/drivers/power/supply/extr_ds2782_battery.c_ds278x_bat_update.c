
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds278x_info {int status; int capacity; int battery; } ;


 int ds278x_get_status (struct ds278x_info*,int*) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static void ds278x_bat_update(struct ds278x_info *info)
{
 int old_status = info->status;
 int old_capacity = info->capacity;

 ds278x_get_status(info, &info->status);

 if ((old_status != info->status) || (old_capacity != info->capacity))
  power_supply_changed(info->battery);
}
