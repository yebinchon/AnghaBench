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
typedef  int s8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static s8
FUNC2(u8 val)
{
	s8 ret;

	if (!FUNC1(val) || !(val & FUNC0(7)))
		return 0;

	ret = val & 0x1f;
	if (ret > 8)
		ret = 8;
	if (val & FUNC0(6))
		ret = -ret;

	return ret;
}