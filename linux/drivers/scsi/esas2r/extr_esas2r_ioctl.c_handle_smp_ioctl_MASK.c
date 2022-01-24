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
typedef  int /*<<< orphan*/  u8 ;
struct esas2r_buffered_ioctl {int /*<<< orphan*/  callback; scalar_t__ offset; scalar_t__ length; struct atto_ioctl_smp* ioctl; struct esas2r_adapter* a; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_ioctl_smp {int /*<<< orphan*/  rsp_length; int /*<<< orphan*/  req_length; } ;
typedef  int /*<<< orphan*/  bi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct esas2r_buffered_ioctl*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_buffered_ioctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  smp_ioctl_callback ; 

__attribute__((used)) static u8 FUNC3(struct esas2r_adapter *a, struct atto_ioctl_smp *si)
{
	struct esas2r_buffered_ioctl bi;

	FUNC2(&bi, 0, sizeof(bi));

	bi.a = a;
	bi.ioctl = si;
	bi.length = sizeof(struct atto_ioctl_smp)
		    + FUNC1(si->req_length)
		    + FUNC1(si->rsp_length);
	bi.offset = 0;
	bi.callback = smp_ioctl_callback;
	return FUNC0(&bi);
}