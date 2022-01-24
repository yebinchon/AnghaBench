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
typedef  scalar_t__ u16 ;
struct wsm_mib {scalar_t__ mib_id; scalar_t__ buf_size; int /*<<< orphan*/  buf; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct wsm_buf*) ; 
 scalar_t__ FUNC3 (struct wsm_buf*) ; 
 scalar_t__ WSM_STATUS_SUCCESS ; 

__attribute__((used)) static int FUNC4(struct cw1200_common *priv,
				struct wsm_mib *arg,
				struct wsm_buf *buf)
{
	u16 size;
	if (FUNC0(FUNC3(buf) != WSM_STATUS_SUCCESS))
		return -EINVAL;

	if (FUNC0(FUNC2(buf) != arg->mib_id))
		return -EINVAL;

	size = FUNC2(buf);
	if (size > arg->buf_size)
		size = arg->buf_size;

	FUNC1(buf, arg->buf, size);
	arg->buf_size = size;
	return 0;

underflow:
	FUNC0(1);
	return -EINVAL;
}