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
struct regulator {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  devm_regulator_match ; 
 int /*<<< orphan*/  devm_regulator_release ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regulator*) ; 

void FUNC2(struct regulator *regulator)
{
	int rc;

	rc = FUNC1(regulator->dev, devm_regulator_release,
			    devm_regulator_match, regulator);
	if (rc != 0)
		FUNC0(rc);
}