
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARTPEC6_DRIVE_4mA_SET ;

 int ARTPEC6_DRIVE_6mA_SET ;

 int ARTPEC6_DRIVE_8mA_SET ;

 int ARTPEC6_DRIVE_9mA_SET ;
 int EINVAL ;

__attribute__((used)) static int artpec6_pconf_drive_mA_to_field(unsigned int mA)
{
 switch (mA) {
 case 131:
  return ARTPEC6_DRIVE_4mA_SET;
 case 130:
  return ARTPEC6_DRIVE_6mA_SET;
 case 129:
  return ARTPEC6_DRIVE_8mA_SET;
 case 128:
  return ARTPEC6_DRIVE_9mA_SET;
 default:
  return -EINVAL;
 }
}
