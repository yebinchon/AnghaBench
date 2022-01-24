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
typedef  int /*<<< orphan*/  u32 ;
struct qedf_ctx {int /*<<< orphan*/  flogi_cnt; } ;
struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 struct fc_seq* FUNC0 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,unsigned int,void (*) (struct fc_seq*,struct fc_frame*,void*),void*,int /*<<< orphan*/ ) ; 
 void FUNC1 (struct fc_seq*,struct fc_frame*,void*) ; 
 struct qedf_ctx* FUNC2 (struct fc_lport*) ; 
 void FUNC3 (struct fc_seq*,struct fc_frame*,void*) ; 

__attribute__((used)) static struct fc_seq *FUNC4(struct fc_lport *lport, u32 did,
	struct fc_frame *fp, unsigned int op,
	void (*resp)(struct fc_seq *,
	struct fc_frame *,
	void *),
	void *arg, u32 timeout)
{
	struct qedf_ctx *qedf = FUNC2(lport);

	/*
	 * Intercept FLOGI for statistic purposes. Note we use the resp
	 * callback to tell if this is really a flogi.
	 */
	if (resp == fc_lport_flogi_resp) {
		qedf->flogi_cnt++;
		return FUNC0(lport, did, fp, op, qedf_flogi_resp,
		    arg, timeout);
	}

	return FUNC0(lport, did, fp, op, resp, arg, timeout);
}