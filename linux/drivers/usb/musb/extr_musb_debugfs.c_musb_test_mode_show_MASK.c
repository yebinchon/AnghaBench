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
struct seq_file {struct musb* private; } ;
struct musb {int /*<<< orphan*/  controller; int /*<<< orphan*/  mregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_TESTMODE ; 
 unsigned int MUSB_TEST_FIFO_ACCESS ; 
 unsigned int MUSB_TEST_FORCE_FS ; 
 unsigned int MUSB_TEST_FORCE_HOST ; 
 unsigned int MUSB_TEST_FORCE_HS ; 
 unsigned int MUSB_TEST_J ; 
 unsigned int MUSB_TEST_K ; 
 unsigned int MUSB_TEST_PACKET ; 
 unsigned int MUSB_TEST_SE0_NAK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *unused)
{
	struct musb		*musb = s->private;
	unsigned		test;

	FUNC1(musb->controller);
	test = FUNC0(musb->mregs, MUSB_TESTMODE);
	FUNC2(musb->controller);
	FUNC3(musb->controller);

	if (test == (MUSB_TEST_FORCE_HOST | MUSB_TEST_FORCE_FS))
		FUNC4(s, "force host full-speed\n");

	else if (test == (MUSB_TEST_FORCE_HOST | MUSB_TEST_FORCE_HS))
		FUNC4(s, "force host high-speed\n");

	else if (test == MUSB_TEST_FORCE_HOST)
		FUNC4(s, "force host\n");

	else if (test == MUSB_TEST_FIFO_ACCESS)
		FUNC4(s, "fifo access\n");

	else if (test == MUSB_TEST_FORCE_FS)
		FUNC4(s, "force full-speed\n");

	else if (test == MUSB_TEST_FORCE_HS)
		FUNC4(s, "force high-speed\n");

	else if (test == MUSB_TEST_PACKET)
		FUNC4(s, "test packet\n");

	else if (test == MUSB_TEST_K)
		FUNC4(s, "test K\n");

	else if (test == MUSB_TEST_J)
		FUNC4(s, "test J\n");

	else if (test == MUSB_TEST_SE0_NAK)
		FUNC4(s, "test SE0 NAK\n");

	return 0;
}