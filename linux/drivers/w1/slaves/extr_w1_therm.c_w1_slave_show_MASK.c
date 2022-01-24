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
typedef  int u8 ;
struct w1_slave {int* family_data; TYPE_1__* family; } ;
struct therm_info {int* rom; int crc; scalar_t__ verdict; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int fid; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 struct w1_slave* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int FUNC3 (struct device*,struct w1_slave*,struct therm_info*) ; 
 int FUNC4 (char*,int,char*,int,...) ; 
 int FUNC5 (int*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *device,
			     struct device_attribute *attr, char *buf)
{
	struct w1_slave *sl = FUNC0(device);
	struct therm_info info;
	u8 *family_data = sl->family_data;
	int ret, i;
	ssize_t c = PAGE_SIZE;
	u8 fid = sl->family->fid;

	ret = FUNC3(device, sl, &info);
	if (ret)
		return ret;

	for (i = 0; i < 9; ++i)
		c -= FUNC4(buf + PAGE_SIZE - c, c, "%02x ", info.rom[i]);
	c -= FUNC4(buf + PAGE_SIZE - c, c, ": crc=%02x %s\n",
		      info.crc, (info.verdict) ? "YES" : "NO");
	if (info.verdict)
		FUNC2(family_data, info.rom, sizeof(info.rom));
	else
		FUNC1(device, "Read failed CRC check\n");

	for (i = 0; i < 9; ++i)
		c -= FUNC4(buf + PAGE_SIZE - c, c, "%02x ",
			      ((u8 *)family_data)[i]);

	c -= FUNC4(buf + PAGE_SIZE - c, c, "t=%d\n",
			FUNC5(info.rom, fid));
	ret = PAGE_SIZE - c;
	return ret;
}