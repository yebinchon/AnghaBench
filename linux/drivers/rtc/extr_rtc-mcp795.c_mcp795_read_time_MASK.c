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
typedef  int u8 ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  MCP795_REG_SECONDS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct rtc_time*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tim)
{
	int ret;
	u8 data[7];

	ret = FUNC2(dev, MCP795_REG_SECONDS, data, sizeof(data));

	if (ret)
		return ret;

	tim->tm_sec	= FUNC0(data[0] & 0x7F);
	tim->tm_min	= FUNC0(data[1] & 0x7F);
	tim->tm_hour	= FUNC0(data[2] & 0x3F);
	tim->tm_wday	= FUNC0(data[3] & 0x07) - 1;
	tim->tm_mday	= FUNC0(data[4] & 0x3F);
	tim->tm_mon	= FUNC0(data[5] & 0x1F) - 1;
	tim->tm_year	= FUNC0(data[6]) + 100; /* Assume we are in 20xx */

	FUNC1(dev, "Read from mcp795: %ptR\n", tim);

	return 0;
}