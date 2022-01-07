
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARTPEC6_DRIVE_4mA ;

 unsigned int ARTPEC6_DRIVE_6mA ;

 unsigned int ARTPEC6_DRIVE_8mA ;

 unsigned int ARTPEC6_DRIVE_9mA ;


__attribute__((used)) static unsigned int artpec6_pconf_drive_field_to_mA(int field)
{
 switch (field) {
 case 131:
  return ARTPEC6_DRIVE_4mA;
 case 130:
  return ARTPEC6_DRIVE_6mA;
 case 129:
  return ARTPEC6_DRIVE_8mA;
 case 128:
  return ARTPEC6_DRIVE_9mA;
 default:

  return 0;
 }
}
