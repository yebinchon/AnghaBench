
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int hanum; } ;
typedef TYPE_1__ gdth_ha_str ;


 int FALSE ;
 int TRACE (char*) ;
 int TRUE ;
 int __gdth_interrupt (TYPE_1__*,int,int*) ;
 int gdth_delay (int) ;
 scalar_t__ gdth_test_busy (TYPE_1__*) ;

__attribute__((used)) static int gdth_wait(gdth_ha_str *ha, int index, u32 time)
{
    int answer_found = FALSE;
    int wait_index = 0;

    TRACE(("gdth_wait() hanum %d index %d time %d\n", ha->hanum, index, time));

    if (index == 0)
        return 1;

    do {
 __gdth_interrupt(ha, 1, &wait_index);
        if (wait_index == index) {
            answer_found = TRUE;
            break;
        }
        gdth_delay(1);
    } while (--time);

    while (gdth_test_busy(ha))
        gdth_delay(0);

    return (answer_found);
}
