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
struct ti_bandgap {TYPE_1__* regval; } ;
struct TYPE_2__ {void* data; } ;

/* Variables and functions */
 int FUNC0 (struct ti_bandgap*,int) ; 

int FUNC1(struct ti_bandgap *bgp, int id, void *data)
{
	int ret = FUNC0(bgp, id);
	if (ret)
		return ret;

	bgp->regval[id].data = data;

	return 0;
}