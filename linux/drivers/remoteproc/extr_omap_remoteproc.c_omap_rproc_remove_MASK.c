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
struct rproc {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct rproc* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rproc*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct rproc *rproc = FUNC0(pdev);

	FUNC1(rproc);
	FUNC2(rproc);

	return 0;
}