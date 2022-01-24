#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vnic_wq_copy {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  req_id; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__ tag; scalar_t__ _resvd; scalar_t__ status; int /*<<< orphan*/  type; } ;
struct fcpio_host_req {TYPE_3__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCPIO_RESET ; 
 struct fcpio_host_req* FUNC0 (struct vnic_wq_copy*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_wq_copy*) ; 

__attribute__((used)) static inline void FUNC2(struct vnic_wq_copy *wq,
						    u32 req_id)
{
	struct fcpio_host_req *desc = FUNC0(wq);

	desc->hdr.type = FCPIO_RESET;     /* enum fcpio_type */
	desc->hdr.status = 0;             /* header status entry */
	desc->hdr._resvd = 0;             /* reserved */
	desc->hdr.tag.u.req_id = req_id;  /* id for this request */

	FUNC1(wq);
}