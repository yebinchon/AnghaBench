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
struct iss_device {int /*<<< orphan*/  crashed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct iss_device* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct iss_device *iss = FUNC3(pdev);

	FUNC1(iss);
	FUNC2(&iss->crashed);
	FUNC0(iss);

	return 0;
}