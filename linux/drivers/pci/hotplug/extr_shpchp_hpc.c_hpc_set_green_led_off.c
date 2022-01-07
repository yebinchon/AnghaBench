
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int hp_slot; } ;


 int SET_PWR_OFF ;
 int shpc_write_cmd (struct slot*,int ,int ) ;

__attribute__((used)) static void hpc_set_green_led_off(struct slot *slot)
{
 shpc_write_cmd(slot, slot->hp_slot, SET_PWR_OFF);
}
