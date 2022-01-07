
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enclosure_component {scalar_t__ type; } ;


 scalar_t__ ENCLOSURE_COMPONENT_DEVICE ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void init_device_slot_control(unsigned char *dest_desc,
         struct enclosure_component *ecomp,
         unsigned char *status)
{
 memcpy(dest_desc, status, 4);
 dest_desc[0] = 0;

 if (ecomp->type == ENCLOSURE_COMPONENT_DEVICE)
  dest_desc[1] = 0;
 dest_desc[2] &= 0xde;
 dest_desc[3] &= 0x3c;
}
