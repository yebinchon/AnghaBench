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

/* Variables and functions */
 int /*<<< orphan*/  LUT_DATA ; 
 int /*<<< orphan*/  LUT_INDEX_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(u8 index, u8 r, u8 g, u8 b)
{
	FUNC0(index, LUT_INDEX_WRITE);
	FUNC0(r, LUT_DATA);
	FUNC0(g, LUT_DATA);
	FUNC0(b, LUT_DATA);
}