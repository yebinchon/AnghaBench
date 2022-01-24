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
struct platform_device {int dummy; } ;
struct pcs_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcs_device*) ; 
 struct pcs_device* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct pcs_device *pcs = FUNC1(pdev);

	if (!pcs)
		return 0;

	FUNC0(pcs);

	return 0;
}