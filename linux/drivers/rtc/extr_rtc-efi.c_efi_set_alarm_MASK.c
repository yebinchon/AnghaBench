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
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  efi_time_t ;
typedef  scalar_t__ efi_status_t ;
typedef  int /*<<< orphan*/  efi_bool_t ;
struct TYPE_2__ {scalar_t__ (* set_wakeup_time ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ EFI_SUCCESS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 TYPE_1__ efi ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	efi_time_t eft;
	efi_status_t status;

	FUNC0(&wkalrm->time, &eft);

	/*
	 * XXX Fixme:
	 * As of EFI 0.92 with the firmware I have on my
	 * machine this call does not seem to work quite
	 * right
	 *
	 * As of v1.10, this call always returns an unsupported status
	 */
	status = efi.set_wakeup_time((efi_bool_t)wkalrm->enabled, &eft);

	FUNC1(dev, "write status is %d\n", (int)status);

	return status == EFI_SUCCESS ? 0 : -EINVAL;
}