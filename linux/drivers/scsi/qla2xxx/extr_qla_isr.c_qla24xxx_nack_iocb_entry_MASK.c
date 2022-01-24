#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct req_que {int dummy; } ;
struct TYPE_6__ {scalar_t__ status; } ;
struct TYPE_7__ {TYPE_1__ isp2x; } ;
struct nack_to_isp {TYPE_2__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* done ) (TYPE_3__*,int) ;} ;
typedef  TYPE_3__ srb_t ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_ACK_SUCCESS ; 
 int QLA_FUNCTION_FAILED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,char const*,struct req_que*,struct nack_to_isp*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC3(scsi_qla_host_t *vha, struct req_que *req,
    struct nack_to_isp *pkt)
{
	const char func[] = "nack";
	srb_t *sp;
	int res = 0;

	sp = FUNC1(vha, func, req, pkt);
	if (!sp)
		return;

	if (pkt->u.isp2x.status != FUNC0(NOTIFY_ACK_SUCCESS))
		res = QLA_FUNCTION_FAILED;

	sp->done(sp, res);
}