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
struct fc_seq {int dummy; } ;
struct fc_rport_priv {int /*<<< orphan*/  kref; struct fc_lport* local_port; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  did; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 TYPE_1__* FUNC4 (struct fc_seq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct fc_seq *sp, struct fc_frame *fp,
			       void *rdata_arg)
{
	struct fc_rport_priv *rdata = rdata_arg;
	struct fc_lport *lport = rdata->local_port;

	FUNC0(lport, FUNC4(sp)->did,
			"Received a LOGO %s\n", FUNC2(fp));
	if (!FUNC1(fp))
		FUNC3(fp);
	FUNC5(&rdata->kref, fc_rport_destroy);
}