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

/* Variables and functions */
 int /*<<< orphan*/  HGA_INDEX_PORT ; 
 int /*<<< orphan*/  HGA_VALUE_PORT ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(unsigned char val, unsigned char reg)
{
	FUNC2(reg, HGA_INDEX_PORT); 
	FUNC1  (val, HGA_VALUE_PORT);
	FUNC3(20); val = (FUNC0(HGA_VALUE_PORT) == val);
	return val;
}