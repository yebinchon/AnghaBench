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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct scsi_cmnd {TYPE_1__* device; } ;
typedef  int /*<<< orphan*/  srb_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct scsi_cmnd* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PO_MODE_DIF_INSERT ; 
 scalar_t__ PO_MODE_DIF_PASS ; 
 scalar_t__ PO_MODE_DIF_REMOVE ; 
 scalar_t__ PO_MODE_DIF_TCP_CKSUM ; 
#define  SCSI_PROT_READ_INSERT 133 
#define  SCSI_PROT_READ_PASS 132 
#define  SCSI_PROT_READ_STRIP 131 
#define  SCSI_PROT_WRITE_INSERT 130 
#define  SCSI_PROT_WRITE_PASS 129 
#define  SCSI_PROT_WRITE_STRIP 128 
 int SHOST_DIX_GUARD_IP ; 
 int FUNC1 (struct scsi_cmnd*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct scsi_cmnd*) ; 

inline int
FUNC4(srb_t *sp, uint16_t *fw_prot_opts)
{
	struct scsi_cmnd *cmd = FUNC0(sp);
	uint8_t	guard = FUNC2(cmd->device->host);

	/* We always use DIFF Bundling for best performance */
	*fw_prot_opts = 0;

	/* Translate SCSI opcode to a protection opcode */
	switch (FUNC1(cmd)) {
	case SCSI_PROT_READ_STRIP:
		*fw_prot_opts |= PO_MODE_DIF_REMOVE;
		break;
	case SCSI_PROT_WRITE_INSERT:
		*fw_prot_opts |= PO_MODE_DIF_INSERT;
		break;
	case SCSI_PROT_READ_INSERT:
		*fw_prot_opts |= PO_MODE_DIF_INSERT;
		break;
	case SCSI_PROT_WRITE_STRIP:
		*fw_prot_opts |= PO_MODE_DIF_REMOVE;
		break;
	case SCSI_PROT_READ_PASS:
	case SCSI_PROT_WRITE_PASS:
		if (guard & SHOST_DIX_GUARD_IP)
			*fw_prot_opts |= PO_MODE_DIF_TCP_CKSUM;
		else
			*fw_prot_opts |= PO_MODE_DIF_PASS;
		break;
	default:	/* Normal Request */
		*fw_prot_opts |= PO_MODE_DIF_PASS;
		break;
	}

	return FUNC3(cmd);
}