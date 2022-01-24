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
typedef  int uint8_t ;
struct scsi_cmnd {int dummy; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int BG_OP_IN_CRC_OUT_CRC ; 
 int BG_OP_IN_CRC_OUT_CSUM ; 
 int BG_OP_IN_CRC_OUT_NODIF ; 
 int BG_OP_IN_CSUM_OUT_CRC ; 
 int BG_OP_IN_CSUM_OUT_NODIF ; 
 int BG_OP_IN_NODIF_OUT_CRC ; 
 int BG_OP_IN_NODIF_OUT_CSUM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_BG ; 
#define  SCSI_PROT_NORMAL 134 
#define  SCSI_PROT_READ_INSERT 133 
#define  SCSI_PROT_READ_PASS 132 
#define  SCSI_PROT_READ_STRIP 131 
#define  SCSI_PROT_WRITE_INSERT 130 
#define  SCSI_PROT_WRITE_PASS 129 
#define  SCSI_PROT_WRITE_STRIP 128 
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static int
FUNC3(struct lpfc_hba *phba, struct scsi_cmnd *sc,
		uint8_t *txop, uint8_t *rxop)
{
	uint8_t ret = 0;

	if (FUNC0(sc)) {
		switch (FUNC2(sc)) {
		case SCSI_PROT_READ_INSERT:
		case SCSI_PROT_WRITE_STRIP:
			*rxop = BG_OP_IN_NODIF_OUT_CSUM;
			*txop = BG_OP_IN_CSUM_OUT_NODIF;
			break;

		case SCSI_PROT_READ_STRIP:
		case SCSI_PROT_WRITE_INSERT:
			*rxop = BG_OP_IN_CRC_OUT_NODIF;
			*txop = BG_OP_IN_NODIF_OUT_CRC;
			break;

		case SCSI_PROT_READ_PASS:
		case SCSI_PROT_WRITE_PASS:
			*rxop = BG_OP_IN_CRC_OUT_CSUM;
			*txop = BG_OP_IN_CSUM_OUT_CRC;
			break;

		case SCSI_PROT_NORMAL:
		default:
			FUNC1(phba, KERN_ERR, LOG_BG,
				"9063 BLKGRD: Bad op/guard:%d/IP combination\n",
					FUNC2(sc));
			ret = 1;
			break;

		}
	} else {
		switch (FUNC2(sc)) {
		case SCSI_PROT_READ_STRIP:
		case SCSI_PROT_WRITE_INSERT:
			*rxop = BG_OP_IN_CRC_OUT_NODIF;
			*txop = BG_OP_IN_NODIF_OUT_CRC;
			break;

		case SCSI_PROT_READ_PASS:
		case SCSI_PROT_WRITE_PASS:
			*rxop = BG_OP_IN_CRC_OUT_CRC;
			*txop = BG_OP_IN_CRC_OUT_CRC;
			break;

		case SCSI_PROT_READ_INSERT:
		case SCSI_PROT_WRITE_STRIP:
			*rxop = BG_OP_IN_NODIF_OUT_CRC;
			*txop = BG_OP_IN_CRC_OUT_NODIF;
			break;

		case SCSI_PROT_NORMAL:
		default:
			FUNC1(phba, KERN_ERR, LOG_BG,
				"9075 BLKGRD: Bad op/guard:%d/CRC combination\n",
					FUNC2(sc));
			ret = 1;
			break;
		}
	}

	return ret;
}