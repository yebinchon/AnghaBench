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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ sense_len; } ;
struct TYPE_4__ {TYPE_1__ scsi_rsp; } ;
struct esas2r_request {scalar_t__ sense_len; scalar_t__* sense_buf; scalar_t__ target_id; scalar_t__ data_buf; TYPE_2__ func_rsp; } ;
struct esas2r_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_LUN_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct esas2r_adapter *a,
				       struct esas2r_request *rq)
{
	u8 snslen, snslen2;

	snslen = snslen2 = rq->func_rsp.scsi_rsp.sense_len;

	if (snslen > rq->sense_len)
		snslen = rq->sense_len;

	if (snslen) {
		if (rq->sense_buf)
			FUNC4(rq->sense_buf, rq->data_buf, snslen);
		else
			rq->sense_buf = (u8 *)rq->data_buf;

		/* See about possible sense data */
		if (snslen2 > 0x0c) {
			u8 *s = (u8 *)rq->data_buf;

			FUNC2();

			/* Report LUNS data has changed */
			if (s[0x0c] == 0x3f && s[0x0d] == 0x0E) {
				FUNC1("rq->target_id: %d",
					     rq->target_id);
				FUNC0(a, rq->target_id,
							    TS_LUN_CHANGE);
			}

			FUNC1("add_sense_key=%x", s[0x0c]);
			FUNC1("add_sense_qual=%x", s[0x0d]);
			FUNC3();
		}
	}

	rq->sense_len = snslen;
}