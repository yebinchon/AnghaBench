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
typedef  int /*<<< orphan*/  u32 ;
struct thermal_trip {struct device_node* np; } ;
struct of_phandle_args {int args_count; int /*<<< orphan*/ * args; struct device_node* np; } ;
struct device_node {int dummy; } ;
struct __thermal_cooling_bind_param {struct device_node* cooling_device; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct __thermal_bind_params {int trip_id; int count; struct __thermal_cooling_bind_param* tcbp; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THERMAL_WEIGHT_DEFAULT ; 
 struct __thermal_cooling_bind_param* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct __thermal_cooling_bind_param*) ; 
 int FUNC2 (struct device_node*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device_node*,char*,char*,int,struct of_phandle_args*) ; 
 int FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct device_node *np,
					   struct __thermal_bind_params *__tbp,
					   struct thermal_trip *trips,
					   int ntrips)
{
	struct of_phandle_args cooling_spec;
	struct __thermal_cooling_bind_param *__tcbp;
	struct device_node *trip;
	int ret, i, count;
	u32 prop;

	/* Default weight. Usage is optional */
	__tbp->usage = THERMAL_WEIGHT_DEFAULT;
	ret = FUNC6(np, "contribution", &prop);
	if (ret == 0)
		__tbp->usage = prop;

	trip = FUNC4(np, "trip", 0);
	if (!trip) {
		FUNC7("missing trip property\n");
		return -ENODEV;
	}

	/* match using device_node */
	for (i = 0; i < ntrips; i++)
		if (trip == trips[i].np) {
			__tbp->trip_id = i;
			break;
		}

	if (i == ntrips) {
		ret = -ENODEV;
		goto end;
	}

	count = FUNC2(np, "cooling-device",
					   "#cooling-cells");
	if (!count) {
		FUNC7("Add a cooling_device property with at least one device\n");
		goto end;
	}

	__tcbp = FUNC0(count, sizeof(*__tcbp), GFP_KERNEL);
	if (!__tcbp)
		goto end;

	for (i = 0; i < count; i++) {
		ret = FUNC5(np, "cooling-device",
				"#cooling-cells", i, &cooling_spec);
		if (ret < 0) {
			FUNC7("Invalid cooling-device entry\n");
			goto free_tcbp;
		}

		__tcbp[i].cooling_device = cooling_spec.np;

		if (cooling_spec.args_count >= 2) { /* at least min and max */
			__tcbp[i].min = cooling_spec.args[0];
			__tcbp[i].max = cooling_spec.args[1];
		} else {
			FUNC7("wrong reference to cooling device, missing limits\n");
		}
	}

	__tbp->tcbp = __tcbp;
	__tbp->count = count;

	goto end;

free_tcbp:
	for (i = i - 1; i >= 0; i--)
		FUNC3(__tcbp[i].cooling_device);
	FUNC1(__tcbp);
end:
	FUNC3(trip);

	return ret;
}