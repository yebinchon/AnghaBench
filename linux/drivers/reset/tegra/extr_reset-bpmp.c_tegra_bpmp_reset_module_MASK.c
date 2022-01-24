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
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RESET_MODULE ; 
 int FUNC0 (struct reset_controller_dev*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC1(struct reset_controller_dev *rstc,
				   unsigned long id)
{
	return FUNC0(rstc, CMD_RESET_MODULE, id);
}