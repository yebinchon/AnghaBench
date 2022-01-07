
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int * aqm; } ;


 int ERESTARTSYS ;
 int PAGE_SIZE ;
 TYPE_1__ ap_perms ;
 int ap_perms_mutex ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t aqmask_show(struct bus_type *bus, char *buf)
{
 int rc;

 if (mutex_lock_interruptible(&ap_perms_mutex))
  return -ERESTARTSYS;
 rc = snprintf(buf, PAGE_SIZE,
        "0x%016lx%016lx%016lx%016lx\n",
        ap_perms.aqm[0], ap_perms.aqm[1],
        ap_perms.aqm[2], ap_perms.aqm[3]);
 mutex_unlock(&ap_perms_mutex);

 return rc;
}
