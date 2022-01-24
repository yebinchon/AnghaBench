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
typedef  int /*<<< orphan*/  timer_page ;
struct us_data {unsigned char* iobuf; scalar_t__ extra; } ;
struct scsi_cmnd {int* cmnd; } ;
struct jumpshot_info {int sense_key; int sense_asc; int sense_ascq; } ;
typedef  int /*<<< orphan*/  rw_err_page ;
typedef  int /*<<< orphan*/  rbac_page ;
typedef  int /*<<< orphan*/  cache_page ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int USB_STOR_TRANSPORT_FAILED ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct us_data*,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned int,struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC5(struct us_data *us,
				      struct scsi_cmnd * srb, 
				      int sense_6)
{
	static unsigned char rw_err_page[12] = {
		0x1, 0xA, 0x21, 1, 0, 0, 0, 0, 1, 0, 0, 0
	};
	static unsigned char cache_page[12] = {
		0x8, 0xA, 0x1, 0, 0, 0, 0, 0, 0, 0, 0, 0
	};
	static unsigned char rbac_page[12] = {
		0x1B, 0xA, 0, 0x81, 0, 0, 0, 0, 0, 0, 0, 0
	};
	static unsigned char timer_page[8] = {
		0x1C, 0x6, 0, 0, 0, 0
	};
	unsigned char pc, page_code;
	unsigned int i = 0;
	struct jumpshot_info *info = (struct jumpshot_info *) (us->extra);
	unsigned char *ptr = us->iobuf;

	pc = srb->cmnd[2] >> 6;
	page_code = srb->cmnd[2] & 0x3F;

	switch (pc) {
	   case 0x0:
		   FUNC3(us, "Current values\n");
		   break;
	   case 0x1:
		   FUNC3(us, "Changeable values\n");
		   break;
	   case 0x2:
		   FUNC3(us, "Default values\n");
		   break;
	   case 0x3:
		   FUNC3(us, "Saves values\n");
		   break;
	}

	FUNC2(ptr, 0, 8);
	if (sense_6) {
		ptr[2] = 0x00;		// WP enable: 0x80
		i = 4;
	} else {
		ptr[3] = 0x00;		// WP enable: 0x80
		i = 8;
	}

	switch (page_code) {
	   case 0x0:
		// vendor-specific mode
		info->sense_key = 0x05;
		info->sense_asc = 0x24;
		info->sense_ascq = 0x00;
		return USB_STOR_TRANSPORT_FAILED;

	   case 0x1:
		FUNC1(ptr + i, rw_err_page, sizeof(rw_err_page));
		i += sizeof(rw_err_page);
		break;

	   case 0x8:
		FUNC1(ptr + i, cache_page, sizeof(cache_page));
		i += sizeof(cache_page);
		break;

	   case 0x1B:
		FUNC1(ptr + i, rbac_page, sizeof(rbac_page));
		i += sizeof(rbac_page);
		break;

	   case 0x1C:
		FUNC1(ptr + i, timer_page, sizeof(timer_page));
		i += sizeof(timer_page);
		break;

	   case 0x3F:
		FUNC1(ptr + i, timer_page, sizeof(timer_page));
		i += sizeof(timer_page);
		FUNC1(ptr + i, rbac_page, sizeof(rbac_page));
		i += sizeof(rbac_page);
		FUNC1(ptr + i, cache_page, sizeof(cache_page));
		i += sizeof(cache_page);
		FUNC1(ptr + i, rw_err_page, sizeof(rw_err_page));
		i += sizeof(rw_err_page);
		break;
	}

	if (sense_6)
		ptr[0] = i - 1;
	else
		((__be16 *) ptr)[0] = FUNC0(i - 2);
	FUNC4(ptr, i, srb);

	return USB_STOR_TRANSPORT_GOOD;
}