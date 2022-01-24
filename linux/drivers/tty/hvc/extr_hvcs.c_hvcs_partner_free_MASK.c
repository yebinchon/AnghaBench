#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hvcs_struct {scalar_t__ connected; TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct hvcs_struct *hvcsd)
{
	int retval;
	do {
		retval = FUNC0(hvcsd->vdev->unit_address);
	} while (retval == -EBUSY);
	hvcsd->connected = 0;
}