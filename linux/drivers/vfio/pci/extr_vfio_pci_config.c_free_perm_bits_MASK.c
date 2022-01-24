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
struct perm_bits {int /*<<< orphan*/ * write; int /*<<< orphan*/ * virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct perm_bits *perm)
{
	FUNC0(perm->virt);
	FUNC0(perm->write);
	perm->virt = NULL;
	perm->write = NULL;
}