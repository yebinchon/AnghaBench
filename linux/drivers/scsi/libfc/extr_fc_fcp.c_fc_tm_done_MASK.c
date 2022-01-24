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
struct fc_seq {int dummy; } ;
struct fc_frame_header {scalar_t__ fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int /*<<< orphan*/ * seq_ptr; int /*<<< orphan*/  wait_for_comp; } ;

/* Variables and functions */
 scalar_t__ FC_TYPE_BLS ; 
 scalar_t__ FUNC0 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_seq*) ; 
 scalar_t__ FUNC2 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_fcp_pkt*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC6 (struct fc_frame*) ; 

__attribute__((used)) static void FUNC7(struct fc_seq *seq, struct fc_frame *fp, void *arg)
{
	struct fc_fcp_pkt *fsp = arg;
	struct fc_frame_header *fh;

	if (FUNC0(fp)) {
		/*
		 * If there is an error just let it timeout or wait
		 * for TMF to be aborted if it timedout.
		 *
		 * scsi-eh will escalate for when either happens.
		 */
		return;
	}

	if (FUNC2(fsp))
		goto out;

	/*
	 * raced with eh timeout handler.
	 */
	if (!fsp->seq_ptr || !fsp->wait_for_comp)
		goto out_unlock;

	fh = FUNC6(fp);
	if (fh->fh_type != FC_TYPE_BLS)
		FUNC3(fsp, fp);
	fsp->seq_ptr = NULL;
	FUNC1(seq);
out_unlock:
	FUNC4(fsp);
out:
	FUNC5(fp);
}