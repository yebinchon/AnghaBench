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
typedef  int u32 ;
struct TYPE_2__ {int msg_id; } ;
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfi_fru_rsp_s {int /*<<< orphan*/  length; int /*<<< orphan*/  status; } ;
struct bfa_fru_s {int residue; int status; int offset; int ubuf; int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cbfn ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  op_busy; int /*<<< orphan*/  dbuf_kva; } ;

/* Variables and functions */
 int BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFI_FRUVPD_H2I_READ_REQ ; 
 int /*<<< orphan*/  BFI_FRUVPD_H2I_WRITE_REQ ; 
#define  BFI_FRUVPD_I2H_READ_RSP 131 
#define  BFI_FRUVPD_I2H_WRITE_RSP 130 
 int /*<<< orphan*/  BFI_TFRU_H2I_READ_REQ ; 
 int /*<<< orphan*/  BFI_TFRU_H2I_WRITE_REQ ; 
#define  BFI_TFRU_I2H_READ_RSP 129 
#define  BFI_TFRU_I2H_WRITE_RSP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fru_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fru_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fru_s*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void
FUNC9(void *fruarg, struct bfi_mbmsg_s *msg)
{
	struct bfa_fru_s *fru = fruarg;
	struct bfi_fru_rsp_s *rsp = (struct bfi_fru_rsp_s *)msg;
	u32 status;

	FUNC4(fru, msg->mh.msg_id);

	if (!fru->op_busy) {
		/*
		 * receiving response after ioc failure
		 */
		FUNC4(fru, 0x9999);
		return;
	}

	switch (msg->mh.msg_id) {
	case BFI_FRUVPD_I2H_WRITE_RSP:
	case BFI_TFRU_I2H_WRITE_RSP:
		status = FUNC1(rsp->status);
		FUNC4(fru, status);

		if (status != BFA_STATUS_OK || fru->residue == 0) {
			fru->status = status;
			fru->op_busy = 0;
			if (fru->cbfn)
				fru->cbfn(fru->cbarg, fru->status);
		} else {
			FUNC4(fru, fru->offset);
			if (msg->mh.msg_id == BFI_FRUVPD_I2H_WRITE_RSP)
				FUNC3(fru,
					BFI_FRUVPD_H2I_WRITE_REQ);
			else
				FUNC3(fru,
					BFI_TFRU_H2I_WRITE_REQ);
		}
		break;
	case BFI_FRUVPD_I2H_READ_RSP:
	case BFI_TFRU_I2H_READ_RSP:
		status = FUNC1(rsp->status);
		FUNC4(fru, status);

		if (status != BFA_STATUS_OK) {
			fru->status = status;
			fru->op_busy = 0;
			if (fru->cbfn)
				fru->cbfn(fru->cbarg, fru->status);
		} else {
			u32 len = FUNC1(rsp->length);

			FUNC4(fru, fru->offset);
			FUNC4(fru, len);

			FUNC5(fru->ubuf + fru->offset, fru->dbuf_kva, len);
			fru->residue -= len;
			fru->offset += len;

			if (fru->residue == 0) {
				fru->status = status;
				fru->op_busy = 0;
				if (fru->cbfn)
					fru->cbfn(fru->cbarg, fru->status);
			} else {
				if (msg->mh.msg_id == BFI_FRUVPD_I2H_READ_RSP)
					FUNC2(fru,
						BFI_FRUVPD_H2I_READ_REQ);
				else
					FUNC2(fru,
						BFI_TFRU_H2I_READ_REQ);
			}
		}
		break;
	default:
		FUNC0(1);
	}
}