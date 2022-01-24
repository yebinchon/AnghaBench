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
struct regulator_dev {int dummy; } ;
struct max1586_data {int v3_curr_sel; } ;

/* Variables and functions */
 struct max1586_data* FUNC0 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC1(struct regulator_dev *rdev)
{
	struct max1586_data *max1586 = FUNC0(rdev);

	return max1586->v3_curr_sel;
}