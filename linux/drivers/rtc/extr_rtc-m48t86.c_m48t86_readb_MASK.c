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
struct m48t86_rtc_info {int /*<<< orphan*/  data_reg; int /*<<< orphan*/  index_reg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct m48t86_rtc_info* FUNC0 (struct device*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char FUNC3(struct device *dev, unsigned long addr)
{
	struct m48t86_rtc_info *info = FUNC0(dev);
	unsigned char value;

	FUNC2(addr, info->index_reg);
	value = FUNC1(info->data_reg);

	return value;
}