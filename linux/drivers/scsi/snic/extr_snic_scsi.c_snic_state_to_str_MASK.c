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
 unsigned int FUNC0 (char const**) ; 
 char const** snic_state_str ; 

const char *
FUNC1(unsigned int state)
{
	if (state >= FUNC0(snic_state_str) || !snic_state_str[state])
		return "Unknown";

	return snic_state_str[state];
}