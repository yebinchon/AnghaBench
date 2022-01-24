#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fc_lport {TYPE_1__* host; int /*<<< orphan*/  stats; } ;
struct fc_frame {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  FcpFrameAllocFails; } ;
struct TYPE_3__ {int /*<<< orphan*/  can_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 struct fc_frame* FUNC1 (struct fc_lport*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct fc_frame*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct fc_frame *FUNC7(struct fc_lport *lport,
						  size_t len)
{
	struct fc_frame *fp;

	fp = FUNC1(lport, len);
	if (FUNC3(fp))
		return fp;

	FUNC4(lport->stats, FUNC2())->FcpFrameAllocFails++;
	FUNC5();
	/* error case */
	FUNC0(lport);
	FUNC6(KERN_ERR, lport->host,
		     "libfc: Could not allocate frame, "
		     "reducing can_queue to %d.\n", lport->host->can_queue);
	return NULL;
}