
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcm_usb_init_params {int family_id; } ;
typedef enum brcm_family_type { ____Placeholder_brcm_family_type } brcm_family_type ;
struct TYPE_2__ {int id; int type; } ;


 TYPE_1__* id_to_type_table ;

__attribute__((used)) static enum brcm_family_type brcmusb_get_family_type(
 struct brcm_usb_init_params *params)
{
 int last_type = -1;
 u32 last_family = 0;
 u32 family_no_major;
 unsigned int x;
 u32 family;

 family = params->family_id & 0xfffffff0;
 family_no_major = params->family_id & 0xffffff00;
 for (x = 0; id_to_type_table[x].id; x++) {
  if (family == id_to_type_table[x].id)
   return id_to_type_table[x].type;
  if (family_no_major == (id_to_type_table[x].id & 0xffffff00))
   if (family > id_to_type_table[x].id &&
       last_family < id_to_type_table[x].id) {
    last_family = id_to_type_table[x].id;
    last_type = id_to_type_table[x].type;
   }
 }


 if (last_type == -1)
  return id_to_type_table[x].type;
 return last_type;
}
