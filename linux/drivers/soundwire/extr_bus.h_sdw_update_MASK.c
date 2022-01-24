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
typedef  int /*<<< orphan*/  u32 ;
struct sdw_slave {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sdw_slave*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sdw_slave*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int
FUNC2(struct sdw_slave *slave, u32 addr, u8 mask, u8 val)
{
	int tmp;

	tmp = FUNC0(slave, addr);
	if (tmp < 0)
		return tmp;

	tmp = (tmp & ~mask) | val;
	return FUNC1(slave, addr, tmp);
}