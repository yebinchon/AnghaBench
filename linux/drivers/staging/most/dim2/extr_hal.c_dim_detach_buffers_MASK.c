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
typedef  int /*<<< orphan*/  u16 ;
struct dim_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIM_ERR_DRIVER_NOT_INITIALIZED ; 
 int FUNC0 (struct dim_channel*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 

bool FUNC2(struct dim_channel *ch, u16 buffers_number)
{
	if (!ch)
		return FUNC1(DIM_ERR_DRIVER_NOT_INITIALIZED,
				    "Bad channel");

	return FUNC0(ch, buffers_number);
}