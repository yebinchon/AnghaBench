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
typedef  scalar_t__ u8 ;
struct us_data {scalar_t__ extra; scalar_t__ iobuf; } ;
struct SD_STATUS {scalar_t__ WtP; scalar_t__ HiSpeed; scalar_t__ HiCapacity; scalar_t__ IsMMC; scalar_t__ Ready; scalar_t__ Insert; } ;
struct ene_ub6250_info {struct SD_STATUS SD_Status; scalar_t__* bbuf; } ;
struct bulk_cb_wrap {int* CDB; int DataTransferLength; void* Flags; void* Signature; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDIR_READ ; 
 int /*<<< orphan*/  SD_INIT1_PATTERN ; 
 int /*<<< orphan*/  SD_INIT2_PATTERN ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int USB_STOR_XFER_GOOD ; 
 int /*<<< orphan*/  US_BULK_CB_SIGN ; 
 void* US_BULK_FLAG_IN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*,scalar_t__*) ; 
 int FUNC2 (struct us_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct us_data*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bulk_cb_wrap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*,char*,...) ; 

__attribute__((used)) static int FUNC6(struct us_data *us)
{
	int result;
	struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
	u8 *bbuf = info->bbuf;

	FUNC5(us, "transport --- ENE_SDInit\n");
	/* SD Init Part-1 */
	result = FUNC2(us, SD_INIT1_PATTERN);
	if (result != USB_STOR_XFER_GOOD) {
		FUNC5(us, "Load SD Init Code Part-1 Fail !!\n");
		return USB_STOR_TRANSPORT_ERROR;
	}

	FUNC4(bcb, 0, sizeof(struct bulk_cb_wrap));
	bcb->Signature = FUNC0(US_BULK_CB_SIGN);
	bcb->Flags = US_BULK_FLAG_IN;
	bcb->CDB[0] = 0xF2;

	result = FUNC3(us, FDIR_READ, NULL, 0);
	if (result != USB_STOR_XFER_GOOD) {
		FUNC5(us, "Execution SD Init Code Fail !!\n");
		return USB_STOR_TRANSPORT_ERROR;
	}

	/* SD Init Part-2 */
	result = FUNC2(us, SD_INIT2_PATTERN);
	if (result != USB_STOR_XFER_GOOD) {
		FUNC5(us, "Load SD Init Code Part-2 Fail !!\n");
		return USB_STOR_TRANSPORT_ERROR;
	}

	FUNC4(bcb, 0, sizeof(struct bulk_cb_wrap));
	bcb->Signature = FUNC0(US_BULK_CB_SIGN);
	bcb->DataTransferLength = 0x200;
	bcb->Flags              = US_BULK_FLAG_IN;
	bcb->CDB[0]             = 0xF1;

	result = FUNC3(us, FDIR_READ, bbuf, 0);
	if (result != USB_STOR_XFER_GOOD) {
		FUNC5(us, "Execution SD Init Code Fail !!\n");
		return USB_STOR_TRANSPORT_ERROR;
	}

	info->SD_Status =  *(struct SD_STATUS *) bbuf;
	if (info->SD_Status.Insert && info->SD_Status.Ready) {
		struct SD_STATUS *s = &info->SD_Status;

		FUNC1(us, bbuf);
		FUNC5(us, "Insert     = %x\n", s->Insert);
		FUNC5(us, "Ready      = %x\n", s->Ready);
		FUNC5(us, "IsMMC      = %x\n", s->IsMMC);
		FUNC5(us, "HiCapacity = %x\n", s->HiCapacity);
		FUNC5(us, "HiSpeed    = %x\n", s->HiSpeed);
		FUNC5(us, "WtP        = %x\n", s->WtP);
	} else {
		FUNC5(us, "SD Card Not Ready --- %x\n", bbuf[0]);
		return USB_STOR_TRANSPORT_ERROR;
	}
	return USB_STOR_TRANSPORT_GOOD;
}