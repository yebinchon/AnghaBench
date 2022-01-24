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
struct bfa_iocpf_s {int /*<<< orphan*/  ioc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_iocpf_s *iocpf)
{
	/*
	 * Mark IOC as failed in hardware and stop firmware.
	 */
	FUNC1(iocpf->ioc);

	/*
	 * Flush any queued up mailbox requests.
	 */
	FUNC2(iocpf->ioc);

	FUNC0(iocpf->ioc);
}