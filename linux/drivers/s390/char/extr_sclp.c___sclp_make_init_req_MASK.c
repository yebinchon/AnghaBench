#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sclp_req {int dummy; } ;
struct TYPE_4__ {int length; } ;
struct init_sccb {int mask_length; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  sccb_mask_t ;
struct TYPE_5__ {struct init_sccb* sccb; int /*<<< orphan*/ * callback_data; int /*<<< orphan*/ * callback; scalar_t__ start_count; int /*<<< orphan*/  status; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCLP_CMDW_WRITE_EVENT_MASK ; 
 int SCLP_MASK_SIZE_COMPAT ; 
 int /*<<< orphan*/  SCLP_REQ_FILLED ; 
 int /*<<< orphan*/  FUNC0 (struct init_sccb*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct init_sccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct init_sccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct init_sccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct init_sccb*,int /*<<< orphan*/ ) ; 
 TYPE_2__ sclp_init_req ; 
 struct init_sccb* sclp_init_sccb ; 
 scalar_t__ sclp_mask_compat_mode ; 

__attribute__((used)) static inline void
FUNC6(sccb_mask_t receive_mask, sccb_mask_t send_mask)
{
	struct init_sccb *sccb = sclp_init_sccb;

	FUNC0(sccb);
	FUNC1(&sclp_init_req, 0, sizeof(struct sclp_req));
	sclp_init_req.command = SCLP_CMDW_WRITE_EVENT_MASK;
	sclp_init_req.status = SCLP_REQ_FILLED;
	sclp_init_req.start_count = 0;
	sclp_init_req.callback = NULL;
	sclp_init_req.callback_data = NULL;
	sclp_init_req.sccb = sccb;
	sccb->header.length = sizeof(*sccb);
	if (sclp_mask_compat_mode)
		sccb->mask_length = SCLP_MASK_SIZE_COMPAT;
	else
		sccb->mask_length = sizeof(sccb_mask_t);
	FUNC2(sccb, receive_mask);
	FUNC5(sccb, send_mask);
	FUNC3(sccb, 0);
	FUNC4(sccb, 0);
}