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
struct sg_table {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct sg_table*,void*,int /*<<< orphan*/ ,size_t,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct sg_table *sgt,
			   void *cpu_addr, dma_addr_t addr, size_t size,
			   unsigned long attrs)
{
	return FUNC0(FUNC1(dev), sgt, cpu_addr, addr, size,
			attrs);
}