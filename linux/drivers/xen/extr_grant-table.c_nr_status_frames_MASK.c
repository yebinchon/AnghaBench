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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPP ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * gnttab_interface ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int nr_grant_frames)
{
	FUNC0(gnttab_interface == NULL);
	return FUNC1(nr_grant_frames, SPP);
}