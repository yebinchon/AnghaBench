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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct device {int dummy; } ;

/* Variables and functions */
 int DS2404_READ_MEMORY_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 

__attribute__((used)) static void FUNC3(struct device *dev, u16 offset,
			       int length, u8 *out)
{
	FUNC1(dev);
	FUNC2(dev, DS2404_READ_MEMORY_CMD);
	FUNC2(dev, offset & 0xff);
	FUNC2(dev, (offset >> 8) & 0xff);
	while (length--)
		*out++ = FUNC0(dev);
}