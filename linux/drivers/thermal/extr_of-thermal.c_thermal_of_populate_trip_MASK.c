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
struct thermal_trip {int temperature; int hysteresis; struct device_node* np; int /*<<< orphan*/  type; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct device_node*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device_node *np,
				    struct thermal_trip *trip)
{
	int prop;
	int ret;

	ret = FUNC1(np, "temperature", &prop);
	if (ret < 0) {
		FUNC2("missing temperature property\n");
		return ret;
	}
	trip->temperature = prop;

	ret = FUNC1(np, "hysteresis", &prop);
	if (ret < 0) {
		FUNC2("missing hysteresis property\n");
		return ret;
	}
	trip->hysteresis = prop;

	ret = FUNC3(np, &trip->type);
	if (ret < 0) {
		FUNC2("wrong trip type property\n");
		return ret;
	}

	/* Required for cooling map matching */
	trip->np = np;
	FUNC0(np);

	return 0;
}