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
struct zfcp_fsf_req {scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct fsf_status_read_buffer {TYPE_1__ payload; } ;
struct fc_els_logo {int /*<<< orphan*/  fl_n_port_wwn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct zfcp_fsf_req *req)
{
	struct fsf_status_read_buffer *status_buffer =
		(struct fsf_status_read_buffer *)req->data;
	struct fc_els_logo *logo =
		(struct fc_els_logo *) status_buffer->payload.data;

	FUNC1(req, FUNC0(logo->fl_n_port_wwn));
}