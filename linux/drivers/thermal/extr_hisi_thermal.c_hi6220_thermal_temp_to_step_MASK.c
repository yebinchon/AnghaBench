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
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ HI6220_TEMP_BASE ; 
 int /*<<< orphan*/  HI6220_TEMP_STEP ; 

__attribute__((used)) static inline int FUNC1(int temp)
{
	return FUNC0(temp - HI6220_TEMP_BASE, HI6220_TEMP_STEP);
}