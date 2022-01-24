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
typedef  int /*<<< orphan*/  uuid ;
typedef  int u8 ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int,char const,int,char const) ; 
 int FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, u8 *uuid_out, const char *buf,
		size_t len)
{
	const char *str = buf;
	u8 uuid[16];
	int i;

	for (i = 0; i < 16; i++) {
		if (!FUNC3(str[0]) || !FUNC3(str[1])) {
			FUNC0(dev, "pos: %d buf[%zd]: %c buf[%zd]: %c\n",
					i, str - buf, str[0],
					str + 1 - buf, str[1]);
			return -EINVAL;
		}

		uuid[i] = (FUNC1(str[0]) << 4) | FUNC1(str[1]);
		str += 2;
		if (FUNC2(*str))
			str++;
	}

	FUNC4(uuid_out, uuid, sizeof(uuid));
	return 0;
}