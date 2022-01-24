#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_1__* driver; int /*<<< orphan*/  name; struct slgt_info* driver_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  count; int /*<<< orphan*/ * tty; int /*<<< orphan*/  mutex; } ;
struct slgt_info {TYPE_2__ port; int /*<<< orphan*/  timeout; int /*<<< orphan*/  device_name; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct slgt_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct tty_struct*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,struct tty_struct*,struct file*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct tty_struct *tty, struct file *filp)
{
	struct slgt_info *info = tty->driver_data;

	if (FUNC4(info, tty->name, "close"))
		return;
	FUNC0(("%s close entry, count=%d\n", info->device_name, info->port.count));

	if (FUNC8(&info->port, tty, filp) == 0)
		goto cleanup;

	FUNC2(&info->port.mutex);
	if (FUNC9(&info->port))
 		FUNC10(tty, info->timeout);
	FUNC1(tty);
	FUNC6(tty);

	FUNC5(info);
	FUNC3(&info->port.mutex);

	FUNC7(&info->port, tty);
	info->port.tty = NULL;
cleanup:
	FUNC0(("%s close exit, count=%d\n", tty->driver->name, info->port.count));
}