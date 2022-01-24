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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline char *FUNC4(int pipe)
{
	if (FUNC3(pipe))
		return "Isoc";
	if (FUNC2(pipe))
		return "Int";
	if (FUNC1(pipe))
		return "Ctrl";
	if (FUNC0(pipe))
		return "Bulk";
	return "?";
}