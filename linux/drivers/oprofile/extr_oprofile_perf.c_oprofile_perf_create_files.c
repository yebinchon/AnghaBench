
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int user; int kernel; int unit_mask; int count; int event; int enabled; } ;


 TYPE_1__* counter_config ;
 unsigned int num_counters ;
 int oprofilefs_create_ulong (struct dentry*,char*,int *) ;
 struct dentry* oprofilefs_mkdir (struct dentry*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int oprofile_perf_create_files(struct dentry *root)
{
 unsigned int i;

 for (i = 0; i < num_counters; i++) {
  struct dentry *dir;
  char buf[4];

  snprintf(buf, sizeof buf, "%d", i);
  dir = oprofilefs_mkdir(root, buf);
  oprofilefs_create_ulong(dir, "enabled", &counter_config[i].enabled);
  oprofilefs_create_ulong(dir, "event", &counter_config[i].event);
  oprofilefs_create_ulong(dir, "count", &counter_config[i].count);
  oprofilefs_create_ulong(dir, "unit_mask", &counter_config[i].unit_mask);
  oprofilefs_create_ulong(dir, "kernel", &counter_config[i].kernel);
  oprofilefs_create_ulong(dir, "user", &counter_config[i].user);
 }

 return 0;
}
