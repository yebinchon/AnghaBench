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
typedef  scalar_t__ ulong ;
struct vnic_wq_buf {int /*<<< orphan*/ * os_buf; } ;
struct vnic_wq {int /*<<< orphan*/  vdev; } ;
struct snic_req_info {int dummy; } ;
struct snic {TYPE_1__* shost; } ;
struct cq_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SNIC_DESC_LOGGING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int snic_log_level ; 
 struct snic* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct vnic_wq *wq,
			    struct cq_desc *cq_desc,
			    struct vnic_wq_buf *buf,
			    void *opaque)
{
	struct snic *snic = FUNC3(wq->vdev);

	FUNC0(buf->os_buf == NULL);

	if (snic_log_level & SNIC_DESC_LOGGING)
		FUNC1(snic->shost,
			       "Ack received for snic_host_req %p.\n",
			       buf->os_buf);

	FUNC2(snic->shost->host_no, 0, 0,
		 ((ulong)(buf->os_buf) - sizeof(struct snic_req_info)), 0, 0,
		 0);

	buf->os_buf = NULL;
}