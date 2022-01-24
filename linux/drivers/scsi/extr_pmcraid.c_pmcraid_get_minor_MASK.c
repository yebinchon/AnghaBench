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
 int /*<<< orphan*/  PMCRAID_MAX_ADAPTERS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmcraid_minor ; 

__attribute__((used)) static unsigned short FUNC2(void)
{
	int minor;

	minor = FUNC1(pmcraid_minor, PMCRAID_MAX_ADAPTERS);
	FUNC0(minor, pmcraid_minor);
	return minor;
}