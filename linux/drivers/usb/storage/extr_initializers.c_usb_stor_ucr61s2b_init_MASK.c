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
struct us_data {int /*<<< orphan*/  recv_bulk_pipe; int /*<<< orphan*/  send_bulk_pipe; scalar_t__ iobuf; } ;
struct bulk_cs_wrap {int Length; int /*<<< orphan*/  CDB; scalar_t__ Lun; scalar_t__ Flags; void* DataTransferLength; scalar_t__ Tag; void* Signature; } ;
struct bulk_cb_wrap {int Length; int /*<<< orphan*/  CDB; scalar_t__ Lun; scalar_t__ Flags; void* DataTransferLength; scalar_t__ Tag; void* Signature; } ;
typedef  int /*<<< orphan*/  init_string ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  US_BULK_CB_SIGN ; 
 int /*<<< orphan*/  US_BULK_CB_WRAP_LEN ; 
 int /*<<< orphan*/  US_BULK_CS_WRAP_LEN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct us_data*,int /*<<< orphan*/ ,struct bulk_cs_wrap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct us_data*,char*) ; 

int FUNC5(struct us_data *us)
{
	struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap*) us->iobuf;
	struct bulk_cs_wrap *bcs = (struct bulk_cs_wrap*) us->iobuf;
	int res;
	unsigned int partial;
	static char init_string[] = "\xec\x0a\x06\x00$PCCHIPS";

	FUNC4(us, "Sending UCR-61S2B initialization packet...\n");

	bcb->Signature = FUNC0(US_BULK_CB_SIGN);
	bcb->Tag = 0;
	bcb->DataTransferLength = FUNC0(0);
	bcb->Flags = bcb->Lun = 0;
	bcb->Length = sizeof(init_string) - 1;
	FUNC2(bcb->CDB, 0, sizeof(bcb->CDB));
	FUNC1(bcb->CDB, init_string, sizeof(init_string) - 1);

	res = FUNC3(us, us->send_bulk_pipe, bcb,
			US_BULK_CB_WRAP_LEN, &partial);
	if (res)
		return -EIO;

	FUNC4(us, "Getting status packet...\n");
	res = FUNC3(us, us->recv_bulk_pipe, bcs,
			US_BULK_CS_WRAP_LEN, &partial);
	if (res)
		return -EIO;

	return 0;
}