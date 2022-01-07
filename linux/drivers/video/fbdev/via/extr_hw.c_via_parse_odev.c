
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int device; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* device_mapping ;
 int strlen (int ) ;
 int strncmp (char*,int ,int) ;

u32 via_parse_odev(char *input, char **end)
{
 char *ptr = input;
 u32 odev = 0;
 bool next = 1;
 int i, len;

 while (next) {
  next = 0;
  for (i = 0; i < ARRAY_SIZE(device_mapping); i++) {
   len = strlen(device_mapping[i].name);
   if (!strncmp(ptr, device_mapping[i].name, len)) {
    odev |= device_mapping[i].device;
    ptr += len;
    if (*ptr == ',') {
     ptr++;
     next = 1;
    }
   }
  }
 }

 *end = ptr;
 return odev;
}
