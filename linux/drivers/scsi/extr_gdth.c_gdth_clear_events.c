
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event_source; } ;


 int TRACE (char*) ;
 TYPE_1__* ebuffer ;
 scalar_t__ elastidx ;
 scalar_t__ eoldidx ;

__attribute__((used)) static void gdth_clear_events(void)
{
    TRACE(("gdth_clear_events()"));

    eoldidx = elastidx = 0;
    ebuffer[0].event_source = 0;
}
