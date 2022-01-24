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
struct timer_list {int dummy; } ;
struct sas_task {struct domain_device* dev; } ;
struct hisi_sas_slot {int idx; struct timer_list internal_abort_timer; struct hisi_sas_port* port; struct hisi_sas_cmd_hdr* cmd_hdr; struct sas_task* task; } ;
struct hisi_sas_port {int id; } ;
struct hisi_sas_cmd_hdr {void* transfer_tags; void* dw7; void* dw1; void* dw0; } ;
struct hisi_hba {int dummy; } ;
struct domain_device {int dummy; } ;

/* Variables and functions */
 int CMD_HDR_ABORT_DEVICE_TYPE_OFF ; 
 int CMD_HDR_ABORT_FLAG_OFF ; 
 int CMD_HDR_ABORT_IPTT_OFF ; 
 int CMD_HDR_CMD_OFF ; 
 int CMD_HDR_DEV_ID_OFF ; 
 int CMD_HDR_PORT_OFF ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct domain_device*) ; 
 int /*<<< orphan*/  hisi_sas_internal_abort_quirk_timeout ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct timer_list*,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hisi_hba *hisi_hba,
		struct hisi_sas_slot *slot,
		int device_id, int abort_flag, int tag_to_abort)
{
	struct sas_task *task = slot->task;
	struct domain_device *dev = task->dev;
	struct hisi_sas_cmd_hdr *hdr = slot->cmd_hdr;
	struct hisi_sas_port *port = slot->port;
	struct timer_list *timer = &slot->internal_abort_timer;

	/* setup the quirk timer */
	FUNC4(timer, hisi_sas_internal_abort_quirk_timeout, 0);
	/* Set the timeout to 10ms less than internal abort timeout */
	FUNC2(timer, jiffies + FUNC3(100));

	/* dw0 */
	hdr->dw0 = FUNC0((5 << CMD_HDR_CMD_OFF) | /*abort*/
			       (port->id << CMD_HDR_PORT_OFF) |
			       (FUNC1(dev) <<
				CMD_HDR_ABORT_DEVICE_TYPE_OFF) |
			       (abort_flag << CMD_HDR_ABORT_FLAG_OFF));

	/* dw1 */
	hdr->dw1 = FUNC0(device_id << CMD_HDR_DEV_ID_OFF);

	/* dw7 */
	hdr->dw7 = FUNC0(tag_to_abort << CMD_HDR_ABORT_IPTT_OFF);
	hdr->transfer_tags = FUNC0(slot->idx);
}