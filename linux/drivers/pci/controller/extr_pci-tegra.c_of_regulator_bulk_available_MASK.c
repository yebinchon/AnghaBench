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
struct regulator_bulk_data {char* supply; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 

__attribute__((used)) static bool FUNC2(struct device_node *np,
					struct regulator_bulk_data *supplies,
					unsigned int num_supplies)
{
	char property[32];
	unsigned int i;

	for (i = 0; i < num_supplies; i++) {
		FUNC1(property, 32, "%s-supply", supplies[i].supply);

		if (FUNC0(np, property, NULL) == NULL)
			return false;
	}

	return true;
}