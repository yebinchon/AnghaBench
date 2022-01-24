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
struct octeon_hcd {int dummy; } ;
struct cvmx_usb_pipe {int /*<<< orphan*/  node; int /*<<< orphan*/  transactions; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct cvmx_usb_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct octeon_hcd *usb,
			       struct cvmx_usb_pipe *pipe)
{
	/* Fail if the pipe has pending transactions */
	if (!FUNC2(&pipe->transactions))
		return -EBUSY;

	FUNC1(&pipe->node);
	FUNC0(pipe);

	return 0;
}