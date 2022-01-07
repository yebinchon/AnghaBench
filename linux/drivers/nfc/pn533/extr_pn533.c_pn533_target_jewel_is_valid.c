
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pn533_target_jewel {int sens_res; } ;


 scalar_t__ PN533_TYPE_A_SENS_RES_PLATCONF (int ) ;
 scalar_t__ PN533_TYPE_A_SENS_RES_PLATCONF_JEWEL ;
 scalar_t__ PN533_TYPE_A_SENS_RES_SSD (int ) ;
 scalar_t__ PN533_TYPE_A_SENS_RES_SSD_JEWEL ;

__attribute__((used)) static bool pn533_target_jewel_is_valid(struct pn533_target_jewel *jewel,
       int target_data_len)
{
 u8 ssd;
 u8 platconf;

 if (target_data_len < sizeof(struct pn533_target_jewel))
  return 0;


 ssd = PN533_TYPE_A_SENS_RES_SSD(jewel->sens_res);
 platconf = PN533_TYPE_A_SENS_RES_PLATCONF(jewel->sens_res);

 if ((ssd == PN533_TYPE_A_SENS_RES_SSD_JEWEL &&
      platconf != PN533_TYPE_A_SENS_RES_PLATCONF_JEWEL) ||
     (ssd != PN533_TYPE_A_SENS_RES_SSD_JEWEL &&
      platconf == PN533_TYPE_A_SENS_RES_PLATCONF_JEWEL))
  return 0;

 return 1;
}
