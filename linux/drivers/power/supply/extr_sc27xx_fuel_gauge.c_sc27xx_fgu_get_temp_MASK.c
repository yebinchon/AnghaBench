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
struct sc27xx_fgu_data {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct sc27xx_fgu_data *data, int *temp)
{
	return FUNC0(data->channel, temp);
}