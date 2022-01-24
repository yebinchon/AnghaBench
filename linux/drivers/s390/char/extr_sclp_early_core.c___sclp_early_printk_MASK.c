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
 int /*<<< orphan*/  FUNC0 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned int) ; 
 scalar_t__ FUNC2 (int,int*,int*) ; 
 scalar_t__ sclp_init_state ; 
 scalar_t__ sclp_init_state_uninitialized ; 

void FUNC3(const char *str, unsigned int len, unsigned int force)
{
	int have_linemode, have_vt220;

	if (!force && sclp_init_state != sclp_init_state_uninitialized)
		return;
	if (FUNC2(0, &have_linemode, &have_vt220) != 0)
		return;
	if (have_linemode)
		FUNC0(str, len);
	if (have_vt220)
		FUNC1(str, len);
	FUNC2(1, &have_linemode, &have_vt220);
}