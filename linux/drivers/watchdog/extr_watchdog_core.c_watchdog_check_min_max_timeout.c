
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {scalar_t__ min_timeout; scalar_t__ max_timeout; int max_hw_heartbeat_ms; } ;


 int pr_info (char*) ;

__attribute__((used)) static void watchdog_check_min_max_timeout(struct watchdog_device *wdd)
{




 if (!wdd->max_hw_heartbeat_ms && wdd->min_timeout > wdd->max_timeout) {
  pr_info("Invalid min and max timeout values, resetting to 0!\n");
  wdd->min_timeout = 0;
  wdd->max_timeout = 0;
 }
}
