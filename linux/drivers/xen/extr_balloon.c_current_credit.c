
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long target_pages; long current_pages; } ;


 TYPE_1__ balloon_stats ;

__attribute__((used)) static long current_credit(void)
{
 return balloon_stats.target_pages - balloon_stats.current_pages;
}
