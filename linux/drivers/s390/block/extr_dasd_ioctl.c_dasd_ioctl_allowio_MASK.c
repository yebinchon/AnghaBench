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
struct dasd_device {int /*<<< orphan*/  flags; } ;
struct dasd_block {struct dasd_device* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  DASD_FLAG_ABORTALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_NOTICE ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dasd_block *block)
{
	struct dasd_device *base;

	base = block->base;
	if (!FUNC1(CAP_SYS_ADMIN))
		return -EACCES;

	if (FUNC2(DASD_FLAG_ABORTALL, &base->flags))
		FUNC0(DBF_NOTICE, base, "%s", "abortall flag unset");

	return 0;
}