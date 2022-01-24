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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct scsi_qla_host {int dummy; } ;
struct mrk_entry {scalar_t__ entry_status; int /*<<< orphan*/  modifier; void* target; void* lun; int /*<<< orphan*/  entry_type; } ;

/* Variables and functions */
 int BIT_7 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MARKER_TYPE ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC3 (struct scsi_qla_host*) ; 

__attribute__((used)) static void
FUNC4(struct scsi_qla_host *ha, int bus, int id, int lun, u8 type)
{
	struct mrk_entry *pkt;

	FUNC0("qla1280_marker");

	/* Get request packet. */
	if ((pkt = (struct mrk_entry *) FUNC3(ha))) {
		pkt->entry_type = MARKER_TYPE;
		pkt->lun = (uint8_t) lun;
		pkt->target = (uint8_t) (bus ? (id | BIT_7) : id);
		pkt->modifier = type;
		pkt->entry_status = 0;

		/* Issue command to ISP */
		FUNC2(ha);
	}

	FUNC1("qla1280_marker");
}