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
struct TYPE_5__ {TYPE_1__* tty; } ;
struct slgt_info {TYPE_2__ port; int /*<<< orphan*/  icount; scalar_t__ pending_bh; int /*<<< orphan*/  device_name; scalar_t__ tx_buf; int /*<<< orphan*/  max_frame_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC8(struct slgt_info *info)
{
	FUNC1(("%s startup\n", info->device_name));

	if (FUNC6(&info->port))
		return 0;

	if (!info->tx_buf) {
		info->tx_buf = FUNC4(info->max_frame_size, GFP_KERNEL);
		if (!info->tx_buf) {
			FUNC0(("%s can't allocate tx buffer\n", info->device_name));
			return -ENOMEM;
		}
	}

	info->pending_bh = 0;

	FUNC5(&info->icount, 0, sizeof(info->icount));

	/* program hardware for current parameters */
	FUNC2(info);

	if (info->port.tty)
		FUNC3(TTY_IO_ERROR, &info->port.tty->flags);

	FUNC7(&info->port, 1);

	return 0;
}