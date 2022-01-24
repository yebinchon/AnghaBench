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
typedef  int u32 ;
struct scsi_cmnd {int dummy; } ;
struct rtsx_chip {int /*<<< orphan*/  lun_mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_CHANGE ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int TRANSPORT_ERROR ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,unsigned int) ; 
 int FUNC4 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	unsigned char *buf;
	unsigned int lun = FUNC1(srb);
	u32 card_size;

	if (!FUNC3(chip, lun)) {
		FUNC10(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;
	}

	if (!(FUNC0(chip->lun_mc, lun))) {
		FUNC2(chip->lun_mc, lun);
		FUNC10(chip, lun, SENSE_TYPE_MEDIA_CHANGE);
		return TRANSPORT_FAILED;
	}

	buf = FUNC6(8, GFP_KERNEL);
	if (!buf)
		return TRANSPORT_ERROR;

	card_size = FUNC4(chip, lun);
	buf[0] = (unsigned char)((card_size - 1) >> 24);
	buf[1] = (unsigned char)((card_size - 1) >> 16);
	buf[2] = (unsigned char)((card_size - 1) >> 8);
	buf[3] = (unsigned char)(card_size - 1);

	buf[4] = 0x00;
	buf[5] = 0x00;
	buf[6] = 0x02;
	buf[7] = 0x00;

	FUNC7(buf, FUNC8(srb), srb);
	FUNC5(buf);

	FUNC9(srb, 0);

	return TRANSPORT_GOOD;
}