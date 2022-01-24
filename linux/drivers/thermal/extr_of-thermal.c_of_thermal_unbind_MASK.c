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
struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct thermal_cooling_device {scalar_t__ np; } ;
struct __thermal_zone {int num_tbps; struct __thermal_bind_params* tbps; } ;
struct __thermal_cooling_bind_param {scalar_t__ cooling_device; } ;
struct __thermal_bind_params {int count; int /*<<< orphan*/  trip_id; struct __thermal_cooling_bind_param* tcbp; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct __thermal_zone*) ; 
 int FUNC1 (struct thermal_zone_device*,int /*<<< orphan*/ ,struct thermal_cooling_device*) ; 

__attribute__((used)) static int FUNC2(struct thermal_zone_device *thermal,
			     struct thermal_cooling_device *cdev)
{
	struct __thermal_zone *data = thermal->devdata;
	struct __thermal_bind_params *tbp;
	struct __thermal_cooling_bind_param *tcbp;
	int i, j;

	if (!data || FUNC0(data))
		return -ENODEV;

	/* find where to unbind */
	for (i = 0; i < data->num_tbps; i++) {
		tbp = data->tbps + i;

		for (j = 0; j < tbp->count; j++) {
			tcbp = tbp->tcbp + j;

			if (tcbp->cooling_device == cdev->np) {
				int ret;

				ret = FUNC1(thermal,
							tbp->trip_id, cdev);
				if (ret)
					return ret;
			}
		}
	}

	return 0;
}