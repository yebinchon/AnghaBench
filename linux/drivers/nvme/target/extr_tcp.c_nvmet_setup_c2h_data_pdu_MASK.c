#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_5__ {scalar_t__ sqhd_disabled; } ;
struct nvmet_tcp_queue {int /*<<< orphan*/  snd_hash; scalar_t__ hdr_digest; scalar_t__ data_digest; TYPE_1__ nvme_sq; } ;
struct TYPE_7__ {scalar_t__ transfer_len; TYPE_2__* cqe; } ;
struct nvmet_tcp_cmd {struct nvmet_tcp_queue* queue; scalar_t__ wbytes_done; TYPE_3__ req; int /*<<< orphan*/  state; scalar_t__ offset; struct nvme_tcp_data_pdu* data_pdu; } ;
struct TYPE_8__ {int flags; int hlen; void* plen; scalar_t__ pdo; int /*<<< orphan*/  type; } ;
struct nvme_tcp_data_pdu {TYPE_4__ hdr; void* data_offset; void* data_length; int /*<<< orphan*/  command_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  command_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVMET_TCP_SEND_DATA_PDU ; 
 int NVME_TCP_F_DATA_LAST ; 
 int NVME_TCP_F_DATA_SUCCESS ; 
 int NVME_TCP_F_DDGST ; 
 int NVME_TCP_F_HDGST ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  nvme_tcp_c2h_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nvmet_tcp_cmd*) ; 
 scalar_t__ FUNC2 (struct nvmet_tcp_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nvme_tcp_data_pdu*,int) ; 
 scalar_t__ FUNC4 (struct nvmet_tcp_queue*) ; 

__attribute__((used)) static void FUNC5(struct nvmet_tcp_cmd *cmd)
{
	struct nvme_tcp_data_pdu *pdu = cmd->data_pdu;
	struct nvmet_tcp_queue *queue = cmd->queue;
	u8 hdgst = FUNC4(cmd->queue);
	u8 ddgst = FUNC2(cmd->queue);

	cmd->offset = 0;
	cmd->state = NVMET_TCP_SEND_DATA_PDU;

	pdu->hdr.type = nvme_tcp_c2h_data;
	pdu->hdr.flags = NVME_TCP_F_DATA_LAST | (queue->nvme_sq.sqhd_disabled ?
						NVME_TCP_F_DATA_SUCCESS : 0);
	pdu->hdr.hlen = sizeof(*pdu);
	pdu->hdr.pdo = pdu->hdr.hlen + hdgst;
	pdu->hdr.plen =
		FUNC0(pdu->hdr.hlen + hdgst +
				cmd->req.transfer_len + ddgst);
	pdu->command_id = cmd->req.cqe->command_id;
	pdu->data_length = FUNC0(cmd->req.transfer_len);
	pdu->data_offset = FUNC0(cmd->wbytes_done);

	if (queue->data_digest) {
		pdu->hdr.flags |= NVME_TCP_F_DDGST;
		FUNC1(queue->snd_hash, cmd);
	}

	if (cmd->queue->hdr_digest) {
		pdu->hdr.flags |= NVME_TCP_F_HDGST;
		FUNC3(queue->snd_hash, pdu, sizeof(*pdu));
	}
}