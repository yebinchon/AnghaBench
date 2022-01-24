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
struct spi_mem_dirmap_info {int dummy; } ;
struct spi_mem_dirmap_desc {int dummy; } ;
struct spi_mem {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct spi_mem_dirmap_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct spi_mem_dirmap_desc*) ; 
 int /*<<< orphan*/  devm_spi_mem_dirmap_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct spi_mem_dirmap_desc**) ; 
 struct spi_mem_dirmap_desc** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_mem_dirmap_desc**) ; 
 struct spi_mem_dirmap_desc* FUNC5 (struct spi_mem*,struct spi_mem_dirmap_info const*) ; 

struct spi_mem_dirmap_desc *
FUNC6(struct device *dev, struct spi_mem *mem,
			   const struct spi_mem_dirmap_info *info)
{
	struct spi_mem_dirmap_desc **ptr, *desc;

	ptr = FUNC3(devm_spi_mem_dirmap_release, sizeof(*ptr),
			   GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	desc = FUNC5(mem, info);
	if (FUNC1(desc)) {
		FUNC4(ptr);
	} else {
		*ptr = desc;
		FUNC2(dev, ptr);
	}

	return desc;
}