#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tty; } ;
struct vc_data {TYPE_1__ port; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct vc_data*,unsigned int,unsigned int) ; 

int FUNC1(struct vc_data *vc, unsigned int cols, unsigned int rows)
{
	return FUNC0(vc->port.tty, vc, cols, rows);
}