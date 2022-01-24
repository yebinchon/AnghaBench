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
struct subchannel_id {int dummy; } ;
struct schib {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENXIO ; 
 int FUNC0 (struct subchannel_id,struct schib*) ; 
 int FUNC1 (struct subchannel_id,struct schib*) ; 

__attribute__((used)) static int FUNC2(struct subchannel_id schid, int slow)
{
	struct schib schib;
	int ccode;

	if (!slow) {
		/* Will be done on the slow path. */
		return -EAGAIN;
	}
	/*
	 * The first subchannel that is not-operational (ccode==3)
	 * indicates that there aren't any more devices available.
	 * If stsch gets an exception, it means the current subchannel set
	 * is not valid.
	 */
	ccode = FUNC1(schid, &schib);
	if (ccode)
		return (ccode == 3) ? -ENXIO : ccode;

	return FUNC0(schid, &schib);
}