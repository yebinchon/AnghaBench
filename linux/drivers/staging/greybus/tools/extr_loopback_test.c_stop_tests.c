
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loopback_test {int device_count; TYPE_1__* devices; } ;
struct TYPE_2__ {int sysfs_entry; } ;


 int device_enabled (struct loopback_test*,int) ;
 int write_sysfs_val (int ,char*,int ) ;

__attribute__((used)) static void stop_tests(struct loopback_test *t)
{
 int i;

 for (i = 0; i < t->device_count; i++) {
  if (!device_enabled(t, i))
   continue;
  write_sysfs_val(t->devices[i].sysfs_entry, "type", 0);
 }
}
