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
struct toshiba_acpi_dev {int /*<<< orphan*/  wwan_rfk; int /*<<< orphan*/  killswitch; TYPE_1__* acpi_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RFKILL_TYPE_WWAN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct toshiba_acpi_dev*) ; 
 int /*<<< orphan*/  wwan_rfk_ops ; 

__attribute__((used)) static int FUNC6(struct toshiba_acpi_dev *dev)
{
	int ret = FUNC5(dev);

	if (ret)
		return ret;

	dev->wwan_rfk = FUNC1("Toshiba WWAN",
				     &dev->acpi_dev->dev,
				     RFKILL_TYPE_WWAN,
				     &wwan_rfk_ops,
				     dev);
	if (!dev->wwan_rfk) {
		FUNC0("Unable to allocate WWAN rfkill device\n");
		return -ENOMEM;
	}

	FUNC4(dev->wwan_rfk, !dev->killswitch);

	ret = FUNC3(dev->wwan_rfk);
	if (ret) {
		FUNC0("Unable to register WWAN rfkill device\n");
		FUNC2(dev->wwan_rfk);
	}

	return ret;
}