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
struct sdw_slave {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ RD_BUF ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char*,unsigned int,...) ; 
 int FUNC1 (struct sdw_slave*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC2(struct sdw_slave *slave,
			   char *buf, size_t pos, unsigned int reg)
{
	int value;

	value = FUNC1(slave, reg);

	if (value < 0)
		return FUNC0(buf + pos, RD_BUF - pos, "%3x\tXX\n", reg);
	else
		return FUNC0(buf + pos, RD_BUF - pos,
				"%3x\t%2x\n", reg, value);
}