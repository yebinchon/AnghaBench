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
struct ptp_qoriq {int /*<<< orphan*/  rsrc; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ptp_qoriq*) ; 
 struct ptp_qoriq* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ptp_qoriq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	struct ptp_qoriq *ptp_qoriq = FUNC1(dev);

	FUNC2(ptp_qoriq);
	FUNC3(ptp_qoriq->rsrc);
	FUNC0(ptp_qoriq);
	return 0;
}