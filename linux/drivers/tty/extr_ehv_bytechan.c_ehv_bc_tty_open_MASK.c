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
struct tty_struct {size_t index; } ;
struct file {int dummy; } ;
struct ehv_bc_data {int /*<<< orphan*/  port; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 struct ehv_bc_data* bcs ; 
 int FUNC0 (int /*<<< orphan*/ *,struct tty_struct*,struct file*) ; 

__attribute__((used)) static int FUNC1(struct tty_struct *ttys, struct file *filp)
{
	struct ehv_bc_data *bc = &bcs[ttys->index];

	if (!bc->dev)
		return -ENODEV;

	return FUNC0(&bc->port, ttys, filp);
}