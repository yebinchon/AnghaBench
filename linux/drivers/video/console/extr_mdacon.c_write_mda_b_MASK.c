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
 int /*<<< orphan*/  mda_index_port ; 
 int /*<<< orphan*/  mda_lock ; 
 int /*<<< orphan*/  mda_value_port ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned int val, unsigned char reg)
{
	unsigned long flags;

	FUNC1(&mda_lock, flags);	

	FUNC0(reg, mda_index_port); 
	FUNC0(val, mda_value_port);

	FUNC2(&mda_lock, flags);
}