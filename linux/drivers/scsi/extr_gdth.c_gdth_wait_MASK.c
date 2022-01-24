#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int /*<<< orphan*/  hanum; } ;
typedef  TYPE_1__ gdth_ha_str ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(gdth_ha_str *ha, int index, u32 time)
{
    int answer_found = FALSE;
    int wait_index = 0;

    FUNC0(("gdth_wait() hanum %d index %d time %d\n", ha->hanum, index, time));

    if (index == 0)
        return 1;                               /* no wait required */

    do {
	FUNC1(ha, true, &wait_index);
        if (wait_index == index) {
            answer_found = TRUE;
            break;
        }
        FUNC2(1);
    } while (--time);

    while (FUNC3(ha))
        FUNC2(0);

    return (answer_found);
}