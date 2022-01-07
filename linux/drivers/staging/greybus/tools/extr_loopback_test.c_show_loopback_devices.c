
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loopback_test {int device_count; TYPE_1__* devices; } ;
struct TYPE_2__ {char* name; } ;


 int printf (char*,...) ;

__attribute__((used)) static void show_loopback_devices(struct loopback_test *t)
{
 int i;

 if (t->device_count == 0) {
  printf("No loopback devices.\n");
  return;
 }

 for (i = 0; i < t->device_count; i++)
  printf("device[%d] = %s\n", i, t->devices[i].name);

}
