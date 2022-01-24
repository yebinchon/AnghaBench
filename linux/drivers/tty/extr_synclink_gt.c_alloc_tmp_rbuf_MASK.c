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
struct slgt_info {int /*<<< orphan*/ * tmp_rbuf; int /*<<< orphan*/  flag_buf; scalar_t__ max_frame_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct slgt_info *info)
{
	info->tmp_rbuf = FUNC1(info->max_frame_size + 5, GFP_KERNEL);
	if (info->tmp_rbuf == NULL)
		return -ENOMEM;
	/* unused flag buffer to satisfy receive_buf calling interface */
	info->flag_buf = FUNC2(info->max_frame_size + 5, GFP_KERNEL);
	if (!info->flag_buf) {
		FUNC0(info->tmp_rbuf);
		info->tmp_rbuf = NULL;
		return -ENOMEM;
	}
	return 0;
}