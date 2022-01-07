
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int io_lock; } ;
struct TYPE_3__ {int wtcompare; } ;


 int EINVAL ;
 int SEC2WTCOMP (int) ;
 int WTCOMP2SEC (int ) ;
 int pr_err (char*,int) ;
 TYPE_2__ rc32434_wdt_device ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timeout ;
 TYPE_1__* wdt_reg ;
 int writel (int ,int *) ;

__attribute__((used)) static int rc32434_wdt_set(int new_timeout)
{
 int max_to = WTCOMP2SEC((u32)-1);

 if (new_timeout < 0 || new_timeout > max_to) {
  pr_err("timeout value must be between 0 and %d\n", max_to);
  return -EINVAL;
 }
 timeout = new_timeout;
 spin_lock(&rc32434_wdt_device.io_lock);
 writel(SEC2WTCOMP(timeout), &wdt_reg->wtcompare);
 spin_unlock(&rc32434_wdt_device.io_lock);

 return 0;
}
