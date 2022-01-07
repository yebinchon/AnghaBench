
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hp_wmi_radio { ____Placeholder_hp_wmi_radio } hp_wmi_radio ;


 int HPWMI_WIRELESS_QUERY ;
 int WARN_ONCE (int,char*) ;
 int hp_wmi_read_int (int ) ;

__attribute__((used)) static bool hp_wmi_get_hw_state(enum hp_wmi_radio r)
{
 int mask = 0x800 << (r * 8);

 int wireless = hp_wmi_read_int(HPWMI_WIRELESS_QUERY);


 WARN_ONCE(wireless < 0, "error executing HPWMI_WIRELESS_QUERY");

 return !(wireless & mask);
}
