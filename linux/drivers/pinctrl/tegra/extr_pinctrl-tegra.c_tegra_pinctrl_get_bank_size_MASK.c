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
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct resource* FUNC0 (struct platform_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct resource*) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static size_t FUNC3(struct device *dev,
					  unsigned int bank_id)
{
	struct platform_device *pdev = FUNC2(dev);
	struct resource *res;

	res = FUNC0(pdev, IORESOURCE_MEM, bank_id);

	return FUNC1(res) / 4;
}