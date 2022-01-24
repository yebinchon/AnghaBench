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
struct bus_type {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  apm; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_DEVICES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ ap_perms ; 
 int /*<<< orphan*/  ap_perms_mutex ; 

__attribute__((used)) static ssize_t FUNC2(struct bus_type *bus, const char *buf,
			    size_t count)
{
	int rc;

	rc = FUNC1(buf, ap_perms.apm, AP_DEVICES, &ap_perms_mutex);
	if (rc)
		return rc;

	FUNC0();

	return count;
}