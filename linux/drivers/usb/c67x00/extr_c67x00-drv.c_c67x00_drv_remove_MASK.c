#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct c67x00_device {TYPE_1__ hpi; int /*<<< orphan*/ * sie; } ;

/* Variables and functions */
 int C67X00_SIES ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct c67x00_device*) ; 
 struct c67x00_device* FUNC5 (struct platform_device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct c67x00_device *c67x00 = FUNC5(pdev);
	struct resource *res;
	int i;

	for (i = 0; i < C67X00_SIES; i++)
		FUNC1(&c67x00->sie[i]);

	FUNC0(c67x00);

	res = FUNC6(pdev, IORESOURCE_IRQ, 0);
	if (res)
		FUNC2(res->start, c67x00);

	FUNC3(c67x00->hpi.base);

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	if (res)
		FUNC7(res->start, FUNC8(res));

	FUNC4(c67x00);

	return 0;
}