#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nvme_tcp_queue {int rd_enabled; TYPE_1__* ctrl; } ;
struct TYPE_7__ {struct nvme_tcp_queue* data; } ;
struct TYPE_8__ {TYPE_2__ arg; } ;
typedef  TYPE_3__ read_descriptor_t ;
struct TYPE_9__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_5__ ctrl; } ;

/* Variables and functions */
 int EFAULT ; 
#define  NVME_TCP_RECV_DATA 130 
#define  NVME_TCP_RECV_DDGST 129 
#define  NVME_TCP_RECV_PDU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (struct nvme_tcp_queue*,struct sk_buff*,unsigned int*,size_t*) ; 
 int FUNC3 (struct nvme_tcp_queue*,struct sk_buff*,unsigned int*,size_t*) ; 
 int FUNC4 (struct nvme_tcp_queue*,struct sk_buff*,unsigned int*,size_t*) ; 
 int FUNC5 (struct nvme_tcp_queue*) ; 

__attribute__((used)) static int FUNC6(read_descriptor_t *desc, struct sk_buff *skb,
			     unsigned int offset, size_t len)
{
	struct nvme_tcp_queue *queue = desc->arg.data;
	size_t consumed = len;
	int result;

	while (len) {
		switch (FUNC5(queue)) {
		case NVME_TCP_RECV_PDU:
			result = FUNC4(queue, skb, &offset, &len);
			break;
		case NVME_TCP_RECV_DATA:
			result = FUNC2(queue, skb, &offset, &len);
			break;
		case NVME_TCP_RECV_DDGST:
			result = FUNC3(queue, skb, &offset, &len);
			break;
		default:
			result = -EFAULT;
		}
		if (result) {
			FUNC0(queue->ctrl->ctrl.device,
				"receive failed:  %d\n", result);
			queue->rd_enabled = false;
			FUNC1(&queue->ctrl->ctrl);
			return result;
		}
	}

	return consumed;
}