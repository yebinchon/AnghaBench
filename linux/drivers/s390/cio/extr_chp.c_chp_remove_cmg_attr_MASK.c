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
struct channel_path {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  chp_measurement_attr ; 
 int /*<<< orphan*/  chp_measurement_chars_attr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct channel_path *chp)
{
	FUNC0(&chp->dev, &chp_measurement_chars_attr);
	FUNC0(&chp->dev, &chp_measurement_attr);
}