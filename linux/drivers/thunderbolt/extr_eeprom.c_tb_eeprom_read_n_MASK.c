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
struct tb_switch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tb_switch*,int) ; 
 int FUNC1 (struct tb_switch*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tb_switch*,int) ; 

__attribute__((used)) static int FUNC3(struct tb_switch *sw, u16 offset, u8 *val,
		size_t count)
{
	int i, res;
	res = FUNC0(sw, true);
	if (res)
		return res;
	res = FUNC2(sw, 3);
	if (res)
		return res;
	res = FUNC2(sw, offset >> 8);
	if (res)
		return res;
	res = FUNC2(sw, offset);
	if (res)
		return res;
	for (i = 0; i < count; i++) {
		res = FUNC1(sw, val + i);
		if (res)
			return res;
	}
	return FUNC0(sw, false);
}