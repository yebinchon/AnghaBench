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
struct smbd_request {TYPE_2__* sge; } ;
struct smbd_connection {int /*<<< orphan*/  send_credits; int /*<<< orphan*/  request_mempool; TYPE_1__* id; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smbd_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct smbd_connection *info,
		struct smbd_request *request)
{

	FUNC1(info->id->device,
			    request->sge[0].addr,
			    request->sge[0].length,
			    DMA_TO_DEVICE);
	FUNC2(request, info->request_mempool);
	FUNC0(&info->send_credits);
}