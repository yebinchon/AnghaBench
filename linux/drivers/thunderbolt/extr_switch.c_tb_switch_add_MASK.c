#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int max_port_number; } ;
struct tb_switch {int /*<<< orphan*/  dev; scalar_t__ rpm; scalar_t__ device_name; scalar_t__ vendor_name; scalar_t__ device; scalar_t__ vendor; TYPE_2__* ports; TYPE_1__ config; int /*<<< orphan*/  uid; int /*<<< orphan*/  safe_mode; } ;
struct TYPE_5__ {scalar_t__ disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct tb_switch*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC12 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC13 (struct tb_switch*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tb_switch*,char*) ; 
 int FUNC15 (struct tb_switch*) ; 
 int FUNC16 (struct tb_switch*) ; 
 int FUNC17 (struct tb_switch*) ; 

int FUNC18(struct tb_switch *sw)
{
	int i, ret;

	/*
	 * Initialize DMA control port now before we read DROM. Recent
	 * host controllers have more complete DROM on NVM that includes
	 * vendor and model identification strings which we then expose
	 * to the userspace. NVM can be accessed through DMA
	 * configuration based mailbox.
	 */
	ret = FUNC15(sw);
	if (ret)
		return ret;

	if (!sw->safe_mode) {
		/* read drom */
		ret = FUNC9(sw);
		if (ret) {
			FUNC14(sw, "tb_eeprom_read_rom failed\n");
			return ret;
		}
		FUNC13(sw, "uid: %#llx\n", sw->uid);

		ret = FUNC17(sw);
		if (ret)
			return ret;

		for (i = 0; i <= sw->config.max_port_number; i++) {
			if (sw->ports[i].disabled) {
				FUNC11(&sw->ports[i], "disabled by eeprom\n");
				continue;
			}
			ret = FUNC10(&sw->ports[i]);
			if (ret)
				return ret;
		}
	}

	ret = FUNC1(&sw->dev);
	if (ret)
		return ret;

	if (FUNC12(sw)) {
		FUNC0(&sw->dev, "new device found, vendor=%#x device=%#x\n",
			 sw->vendor, sw->device);
		if (sw->vendor_name && sw->device_name)
			FUNC0(&sw->dev, "%s %s\n", sw->vendor_name,
				 sw->device_name);
	}

	ret = FUNC16(sw);
	if (ret) {
		FUNC2(&sw->dev);
		return ret;
	}

	FUNC6(&sw->dev);
	if (sw->rpm) {
		FUNC7(&sw->dev, TB_AUTOSUSPEND_DELAY);
		FUNC8(&sw->dev);
		FUNC5(&sw->dev);
		FUNC4(&sw->dev);
		FUNC3(&sw->dev);
	}

	return 0;
}