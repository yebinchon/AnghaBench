
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loopback_test {int device_count; int iteration_max; TYPE_1__* devices; } ;
struct TYPE_2__ {int sysfs_entry; } ;


 int device_enabled (struct loopback_test*,int) ;
 int read_sysfs_int (int ,char*) ;

__attribute__((used)) static int is_complete(struct loopback_test *t)
{
 int iteration_count;
 int i;

 for (i = 0; i < t->device_count; i++) {
  if (!device_enabled(t, i))
   continue;

  iteration_count = read_sysfs_int(t->devices[i].sysfs_entry,
       "iteration_count");


  if (iteration_count != t->iteration_max)
   return 0;
 }

 return 1;
}
