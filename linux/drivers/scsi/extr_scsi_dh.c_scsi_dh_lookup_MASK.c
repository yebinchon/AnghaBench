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
struct scsi_device_handler {int dummy; } ;

/* Variables and functions */
 struct scsi_device_handler* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static struct scsi_device_handler *FUNC3(const char *name)
{
	struct scsi_device_handler *dh;

	if (!name || FUNC2(name) == 0)
		return NULL;

	dh = FUNC0(name);
	if (!dh) {
		FUNC1("scsi_dh_%s", name);
		dh = FUNC0(name);
	}

	return dh;
}