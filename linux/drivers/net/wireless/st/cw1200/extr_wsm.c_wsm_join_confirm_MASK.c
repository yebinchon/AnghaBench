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
struct wsm_join_cnf {int status; void* max_power_level; void* min_power_level; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (struct wsm_buf*) ; 
 scalar_t__ WSM_STATUS_SUCCESS ; 

__attribute__((used)) static int FUNC2(struct cw1200_common *priv,
			    struct wsm_join_cnf *arg,
			    struct wsm_buf *buf)
{
	arg->status = FUNC1(buf);
	if (FUNC0(arg->status) != WSM_STATUS_SUCCESS)
		return -EINVAL;

	arg->min_power_level = FUNC1(buf);
	arg->max_power_level = FUNC1(buf);

	return 0;

underflow:
	FUNC0(1);
	return -EINVAL;
}