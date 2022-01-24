#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  model; } ;
struct TYPE_3__ {int /*<<< orphan*/  cg_item; } ;
struct se_device {TYPE_2__ t10_wwn; TYPE_1__ dev_group; } ;

/* Variables and functions */
 scalar_t__ INQUIRY_MODEL_LEN ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct se_device*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(struct se_device *dev)
{
	const char *configname;

	configname = FUNC0(&dev->dev_group.cg_item);
	if (FUNC3(configname) >= INQUIRY_MODEL_LEN) {
		FUNC1("dev[%p]: Backstore name '%s' is too long for "
			"INQUIRY_MODEL, truncating to 15 characters\n", dev,
			configname);
	}
	/*
	 * XXX We can't use sizeof(dev->t10_wwn.model) (INQUIRY_MODEL_LEN + 1)
	 * here without potentially breaking existing setups, so continue to
	 * truncate one byte shorter than what can be carried in INQUIRY.
	 */
	FUNC2(dev->t10_wwn.model, configname, INQUIRY_MODEL_LEN);
}