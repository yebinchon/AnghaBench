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
struct pnp_dev {int /*<<< orphan*/  protocol_list; int /*<<< orphan*/  global_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pnp_lock ; 

__attribute__((used)) static void FUNC3(struct pnp_dev *dev)
{
	FUNC1(&pnp_lock);
	FUNC0(&dev->global_list);
	FUNC0(&dev->protocol_list);
	FUNC2(&pnp_lock);
}