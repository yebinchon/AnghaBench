#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _adapter {int bup; int driver_stopped; int hw_init_completed; int /*<<< orphan*/  (* dvobj_deinit ) (struct _adapter*) ;int /*<<< orphan*/  surprise_removed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*) ; 

void FUNC4(struct _adapter *padapter)
{
	if (padapter->bup) {
		/*s1.*/
		padapter->driver_stopped = true;

		/*s3.*/
		FUNC2(padapter);

		/*s4.*/
		FUNC0(padapter);

		/*s5.*/
		if (!padapter->surprise_removed) {
			padapter->hw_init_completed = false;
			FUNC1(padapter);
		}

		/*s6.*/
		if (padapter->dvobj_deinit)
			padapter->dvobj_deinit(padapter);
		padapter->bup = false;
	}
}