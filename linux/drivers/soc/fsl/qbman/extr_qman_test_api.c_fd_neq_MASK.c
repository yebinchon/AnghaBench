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
struct qm_fd {scalar_t__ cfg; scalar_t__ cmd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qm_fd const*) ; 
 scalar_t__ FUNC1 (struct qm_fd const*) ; 

__attribute__((used)) static bool FUNC2(const struct qm_fd *a, const struct qm_fd *b)
{
	bool neq = FUNC0(a) != FUNC0(b);

	neq |= FUNC1(a) != FUNC1(b);
	neq |= a->cfg != b->cfg;
	neq |= a->cmd != b->cmd;

	return neq;
}