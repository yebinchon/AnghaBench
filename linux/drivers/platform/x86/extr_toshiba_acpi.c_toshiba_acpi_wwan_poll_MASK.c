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
struct toshiba_acpi_dev {int /*<<< orphan*/  killswitch; int /*<<< orphan*/  wwan_rfk; } ;
struct rfkill {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct toshiba_acpi_dev*) ; 

__attribute__((used)) static void FUNC2(struct rfkill *rfkill, void *data)
{
	struct toshiba_acpi_dev *dev = data;

	if (FUNC1(dev))
		return;

	FUNC0(dev->wwan_rfk, !dev->killswitch);
}