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
struct w1_family {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct w1_family*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w1_flock ; 

void FUNC3(struct w1_family *f)
{
	FUNC1(&w1_flock);
	FUNC0(f);
	FUNC2(&w1_flock);
}