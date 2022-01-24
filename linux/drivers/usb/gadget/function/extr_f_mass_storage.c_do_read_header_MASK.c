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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct fsg_lun {scalar_t__ num_sectors; int /*<<< orphan*/  sense_data; } ;
struct fsg_common {int* cmnd; struct fsg_lun* curlun; } ;
struct fsg_buffhd {scalar_t__ buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SS_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct fsg_common *common, struct fsg_buffhd *bh)
{
	struct fsg_lun	*curlun = common->curlun;
	int		msf = common->cmnd[1] & 0x02;
	u32		lba = FUNC0(&common->cmnd[2]);
	u8		*buf = (u8 *)bh->buf;

	if (common->cmnd[1] & ~0x02) {		/* Mask away MSF */
		curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
		return -EINVAL;
	}
	if (lba >= curlun->num_sectors) {
		curlun->sense_data = SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
		return -EINVAL;
	}

	FUNC1(buf, 0, 8);
	buf[0] = 0x01;		/* 2048 bytes of user data, rest is EC */
	FUNC2(&buf[4], msf, lba);
	return 8;
}