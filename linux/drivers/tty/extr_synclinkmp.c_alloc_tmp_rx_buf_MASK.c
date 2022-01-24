#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * tmp_rx_buf; int /*<<< orphan*/  flag_buf; int /*<<< orphan*/  max_frame_size; } ;
typedef  TYPE_1__ SLMP_INFO ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(SLMP_INFO *info)
{
	info->tmp_rx_buf = FUNC1(info->max_frame_size, GFP_KERNEL);
	if (info->tmp_rx_buf == NULL)
		return -ENOMEM;
	/* unused flag buffer to satisfy receive_buf calling interface */
	info->flag_buf = FUNC2(info->max_frame_size, GFP_KERNEL);
	if (!info->flag_buf) {
		FUNC0(info->tmp_rx_buf);
		info->tmp_rx_buf = NULL;
		return -ENOMEM;
	}
	return 0;
}