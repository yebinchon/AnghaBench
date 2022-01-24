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
struct resource {int dummy; } ;
struct r8a66597 {int /*<<< orphan*/  sudmac_reg; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct resource*) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct r8a66597 *r8a66597,
					  struct platform_device *pdev)
{
	struct resource *res;

	res = FUNC2(pdev, IORESOURCE_MEM, "sudmac");
	r8a66597->sudmac_reg = FUNC1(&pdev->dev, res);
	return FUNC0(r8a66597->sudmac_reg);
}