
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loopback_test {scalar_t__ device_count; TYPE_1__* devices; scalar_t__ mask; } ;
struct TYPE_2__ {int name; } ;


 int MAX_NUM_DEVICES ;
 int device_enabled (struct loopback_test*,int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int sanity_check(struct loopback_test *t)
{
 int i;

 if (t->device_count == 0) {
  fprintf(stderr, "No loopback devices found\n");
  return -1;
 }

 for (i = 0; i < MAX_NUM_DEVICES; i++) {
  if (!device_enabled(t, i))
   continue;

  if (t->mask && !strcmp(t->devices[i].name, "")) {
   fprintf(stderr, "Bad device mask %x\n", (1 << i));
   return -1;
  }

 }


 return 0;
}
