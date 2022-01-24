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
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  efi_time_t ;
typedef  int /*<<< orphan*/  efi_time_cap_t ;
typedef  scalar_t__ efi_status_t ;
struct TYPE_2__ {scalar_t__ (* get_time ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ EFI_SUCCESS ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 TYPE_1__ efi ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	efi_status_t status;
	efi_time_t eft;
	efi_time_cap_t cap;

	status = efi.get_time(&eft, &cap);

	if (status != EFI_SUCCESS) {
		/* should never happen */
		FUNC1(dev, "can't read time\n");
		return -EINVAL;
	}

	if (!FUNC0(&eft, tm))
		return -EIO;

	return 0;
}