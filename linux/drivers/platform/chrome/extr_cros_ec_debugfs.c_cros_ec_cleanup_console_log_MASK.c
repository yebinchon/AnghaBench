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
struct TYPE_2__ {scalar_t__ buf; } ;
struct cros_ec_debugfs {int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  log_poll_work; TYPE_1__ log_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct cros_ec_debugfs *debug_info)
{
	if (debug_info->log_buffer.buf) {
		FUNC0(&debug_info->log_poll_work);
		FUNC1(&debug_info->log_mutex);
	}
}