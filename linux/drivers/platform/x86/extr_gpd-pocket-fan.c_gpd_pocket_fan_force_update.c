
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpd_pocket_fan_data {int last_speed; int work; } ;


 int mod_delayed_work (int ,int *,int ) ;
 int system_wq ;

__attribute__((used)) static void gpd_pocket_fan_force_update(struct gpd_pocket_fan_data *fan)
{
 fan->last_speed = -1;
 mod_delayed_work(system_wq, &fan->work, 0);
}
