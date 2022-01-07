
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_lane {size_t function; TYPE_1__* soc; } ;
struct TYPE_2__ {char** funcs; } ;


 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool tegra_xusb_lane_check(struct tegra_xusb_lane *lane,
      const char *function)
{
 const char *func = lane->soc->funcs[lane->function];

 return strcmp(function, func) == 0;
}
