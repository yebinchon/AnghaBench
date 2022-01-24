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
struct bfa_ioc_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct bfa_ioc_s *ioc)
{
	FUNC1(ioc, BFI_IOC_UNINIT);
	FUNC0(ioc, BFI_IOC_UNINIT);
}