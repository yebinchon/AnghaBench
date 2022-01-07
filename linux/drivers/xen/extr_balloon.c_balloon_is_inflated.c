
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ balloon_high; scalar_t__ balloon_low; } ;


 TYPE_1__ balloon_stats ;

__attribute__((used)) static bool balloon_is_inflated(void)
{
 return balloon_stats.balloon_low || balloon_stats.balloon_high;
}
