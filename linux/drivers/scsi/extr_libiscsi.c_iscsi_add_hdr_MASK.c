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
struct iscsi_task {unsigned int hdr_len; unsigned int hdr_max; } ;

/* Variables and functions */
 int EINVAL ; 
 int ISCSI_PAD_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 

__attribute__((used)) static int FUNC1(struct iscsi_task *task, unsigned len)
{
	unsigned exp_len = task->hdr_len + len;

	if (exp_len > task->hdr_max) {
		FUNC0(1);
		return -EINVAL;
	}

	FUNC0(len & (ISCSI_PAD_LEN - 1)); /* caller must pad the AHS */
	task->hdr_len = exp_len;
	return 0;
}