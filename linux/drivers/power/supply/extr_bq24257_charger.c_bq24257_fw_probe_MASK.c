#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {void* vindpm; void* vovp; void* iilimit; void* iterm; void* vbat; void* ichg; } ;
struct bq24257_device {int iilimit_autoset_enable; TYPE_1__ init_data; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ24257_ICHG_MAP_SIZE ; 
 int /*<<< orphan*/  BQ24257_IILIMIT_MAP_SIZE ; 
 int /*<<< orphan*/  BQ24257_ITERM_MAP_SIZE ; 
 int /*<<< orphan*/  BQ24257_VBAT_MAP_SIZE ; 
 int /*<<< orphan*/  BQ24257_VINDPM_MAP_SIZE ; 
 int /*<<< orphan*/  BQ24257_VOVP_MAP_SIZE ; 
 void* IILIMIT_500 ; 
 void* VINDPM_4360 ; 
 void* VOVP_6500 ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bq24257_ichg_map ; 
 int /*<<< orphan*/  bq24257_iilimit_map ; 
 int /*<<< orphan*/  bq24257_iterm_map ; 
 int /*<<< orphan*/  bq24257_vbat_map ; 
 int /*<<< orphan*/  bq24257_vindpm_map ; 
 int /*<<< orphan*/  bq24257_vovp_map ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct bq24257_device *bq)
{
	int ret;
	u32 property;

	/* Required properties */
	ret = FUNC1(bq->dev, "ti,charge-current", &property);
	if (ret < 0)
		return ret;

	bq->init_data.ichg = FUNC0(property, bq24257_ichg_map,
					      BQ24257_ICHG_MAP_SIZE);

	ret = FUNC1(bq->dev, "ti,battery-regulation-voltage",
				       &property);
	if (ret < 0)
		return ret;

	bq->init_data.vbat = FUNC0(property, bq24257_vbat_map,
					      BQ24257_VBAT_MAP_SIZE);

	ret = FUNC1(bq->dev, "ti,termination-current",
				       &property);
	if (ret < 0)
		return ret;

	bq->init_data.iterm = FUNC0(property, bq24257_iterm_map,
					       BQ24257_ITERM_MAP_SIZE);

	/* Optional properties. If not provided use reasonable default. */
	ret = FUNC1(bq->dev, "ti,current-limit",
				       &property);
	if (ret < 0) {
		bq->iilimit_autoset_enable = true;

		/*
		 * Explicitly set a default value which will be needed for
		 * devices that don't support the automatic setting of the input
		 * current limit through the charger type detection mechanism.
		 */
		bq->init_data.iilimit = IILIMIT_500;
	} else
		bq->init_data.iilimit =
				FUNC0(property,
						 bq24257_iilimit_map,
						 BQ24257_IILIMIT_MAP_SIZE);

	ret = FUNC1(bq->dev, "ti,ovp-voltage",
				       &property);
	if (ret < 0)
		bq->init_data.vovp = VOVP_6500;
	else
		bq->init_data.vovp = FUNC0(property,
						      bq24257_vovp_map,
						      BQ24257_VOVP_MAP_SIZE);

	ret = FUNC1(bq->dev, "ti,in-dpm-voltage",
				       &property);
	if (ret < 0)
		bq->init_data.vindpm = VINDPM_4360;
	else
		bq->init_data.vindpm =
				FUNC0(property,
						 bq24257_vindpm_map,
						 BQ24257_VINDPM_MAP_SIZE);

	return 0;
}