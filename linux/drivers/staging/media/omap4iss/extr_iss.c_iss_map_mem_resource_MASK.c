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
struct iss_device {int /*<<< orphan*/ * regs; int /*<<< orphan*/  dev; } ;
typedef  enum iss_mem_resources { ____Placeholder_iss_mem_resources } iss_mem_resources ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct resource*) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
				struct iss_device *iss,
				enum iss_mem_resources res)
{
	struct resource *mem;

	mem = FUNC2(pdev, IORESOURCE_MEM, res);

	iss->regs[res] = FUNC1(iss->dev, mem);

	return FUNC0(iss->regs[res]);
}