
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef scalar_t__ u_char ;
struct sym_chip {scalar_t__ device_id; scalar_t__ revision_id; } ;


 struct sym_chip* sym_dev_table ;
 int sym_num_devs ;

struct sym_chip *
sym_lookup_chip_table (u_short device_id, u_char revision)
{
 struct sym_chip *chip;
 int i;

 for (i = 0; i < sym_num_devs; i++) {
  chip = &sym_dev_table[i];
  if (device_id != chip->device_id)
   continue;
  if (revision > chip->revision_id)
   continue;
  return chip;
 }

 return ((void*)0);
}
