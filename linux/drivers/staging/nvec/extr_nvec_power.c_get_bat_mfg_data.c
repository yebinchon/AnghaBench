
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_power {int nvec; } ;


 int ARRAY_SIZE (char*) ;
 char NVEC_BAT ;
 char SLOT_STATUS ;
 char* bat_init ;
 int nvec_write_async (int ,char*,int) ;

__attribute__((used)) static void get_bat_mfg_data(struct nvec_power *power)
{
 int i;
 char buf[] = { NVEC_BAT, SLOT_STATUS };

 for (i = 0; i < ARRAY_SIZE(bat_init); i++) {
  buf[1] = bat_init[i];
  nvec_write_async(power->nvec, buf, 2);
 }
}
