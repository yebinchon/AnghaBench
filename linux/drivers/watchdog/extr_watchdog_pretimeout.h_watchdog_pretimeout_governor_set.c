
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int watchdog_pretimeout_governor_set(struct watchdog_device *wdd,
         const char *buf)
{
 return -EINVAL;
}
