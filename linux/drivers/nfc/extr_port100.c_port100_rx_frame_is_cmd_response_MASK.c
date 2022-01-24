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
struct port100_frame {int dummy; } ;
struct port100 {TYPE_1__* cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct port100_frame*) ; 

__attribute__((used)) static bool FUNC2(struct port100 *dev, void *frame)
{
	struct port100_frame *f = frame;

	return (FUNC1(f) == FUNC0(dev->cmd->code));
}