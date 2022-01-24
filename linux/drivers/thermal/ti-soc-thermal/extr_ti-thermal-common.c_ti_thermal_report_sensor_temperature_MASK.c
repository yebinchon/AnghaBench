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
struct ti_thermal_data {int /*<<< orphan*/  thermal_wq; } ;
struct ti_bandgap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ti_thermal_data* FUNC1 (struct ti_bandgap*,int) ; 

int FUNC2(struct ti_bandgap *bgp, int id)
{
	struct ti_thermal_data *data;

	data = FUNC1(bgp, id);

	FUNC0(&data->thermal_wq);

	return 0;
}