#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct fsg_common {int* cmnd; int data_size_from_cmnd; int cmnd_size; scalar_t__ data_dir; int residue; int /*<<< orphan*/  filesem; TYPE_1__* curlun; scalar_t__ short_packet_received; scalar_t__ phase_error; struct fsg_buffhd* next_buffhd_to_drain; struct fsg_buffhd* next_buffhd_to_fill; } ;
struct fsg_buffhd {int /*<<< orphan*/  state; TYPE_2__* inreq; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {int /*<<< orphan*/  sense_data; int /*<<< orphan*/  cdrom; } ;

/* Variables and functions */
#define  ALLOW_MEDIUM_REMOVAL 152 
 int /*<<< orphan*/  BUF_STATE_FULL ; 
 scalar_t__ DATA_DIR_FROM_HOST ; 
 scalar_t__ DATA_DIR_NONE ; 
 scalar_t__ DATA_DIR_TO_HOST ; 
 scalar_t__ DATA_DIR_UNKNOWN ; 
 int EINTR ; 
 int EINVAL ; 
#define  FORMAT_UNIT 151 
#define  INQUIRY 150 
#define  MODE_SELECT 149 
#define  MODE_SELECT_10 148 
#define  MODE_SENSE 147 
#define  MODE_SENSE_10 146 
#define  READ_10 145 
#define  READ_12 144 
#define  READ_6 143 
#define  READ_CAPACITY 142 
#define  READ_FORMAT_CAPACITIES 141 
#define  READ_HEADER 140 
#define  READ_TOC 139 
#define  RELEASE 138 
#define  REQUEST_SENSE 137 
#define  RESERVE 136 
#define  SEND_DIAGNOSTIC 135 
 int /*<<< orphan*/  SS_INVALID_COMMAND ; 
#define  START_STOP 134 
#define  SYNCHRONIZE_CACHE 133 
#define  TEST_UNIT_READY 132 
#define  VERIFY 131 
#define  WRITE_10 130 
#define  WRITE_12 129 
#define  WRITE_6 128 
 int FUNC0 (struct fsg_common*,int,scalar_t__,int,int,char*) ; 
 int FUNC1 (struct fsg_common*,int,scalar_t__,int,int,char*) ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 (struct fsg_common*,struct fsg_buffhd*) ; 
 int FUNC3 (struct fsg_common*,struct fsg_buffhd*) ; 
 int FUNC4 (struct fsg_common*,struct fsg_buffhd*) ; 
 int FUNC5 (struct fsg_common*) ; 
 int FUNC6 (struct fsg_common*) ; 
 int FUNC7 (struct fsg_common*,struct fsg_buffhd*) ; 
 int FUNC8 (struct fsg_common*,struct fsg_buffhd*) ; 
 int FUNC9 (struct fsg_common*,struct fsg_buffhd*) ; 
 int FUNC10 (struct fsg_common*,struct fsg_buffhd*) ; 
 int FUNC11 (struct fsg_common*,struct fsg_buffhd*) ; 
 int FUNC12 (struct fsg_common*) ; 
 int FUNC13 (struct fsg_common*) ; 
 int FUNC14 (struct fsg_common*) ; 
 int FUNC15 (struct fsg_common*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct fsg_common*) ; 
 void* FUNC18 (int*) ; 
 void* FUNC19 (int*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (struct fsg_common*,int,struct fsg_buffhd*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct fsg_common *common)
{
	struct fsg_buffhd	*bh;
	int			rc;
	int			reply = -EINVAL;
	int			i;
	static char		unknown[16];

	FUNC17(common);

	/* Wait for the next buffer to become available for data or status */
	bh = common->next_buffhd_to_fill;
	common->next_buffhd_to_drain = bh;
	rc = FUNC22(common, false, bh);
	if (rc)
		return rc;

	common->phase_error = 0;
	common->short_packet_received = 0;

	FUNC16(&common->filesem);	/* We're using the backing file */
	switch (common->cmnd[0]) {

	case INQUIRY:
		common->data_size_from_cmnd = common->cmnd[4];
		reply = FUNC0(common, 6, DATA_DIR_TO_HOST,
				      (1<<4), 0,
				      "INQUIRY");
		if (reply == 0)
			reply = FUNC2(common, bh);
		break;

	case MODE_SELECT:
		common->data_size_from_cmnd = common->cmnd[4];
		reply = FUNC0(common, 6, DATA_DIR_FROM_HOST,
				      (1<<1) | (1<<4), 0,
				      "MODE SELECT(6)");
		if (reply == 0)
			reply = FUNC3(common, bh);
		break;

	case MODE_SELECT_10:
		common->data_size_from_cmnd =
			FUNC18(&common->cmnd[7]);
		reply = FUNC0(common, 10, DATA_DIR_FROM_HOST,
				      (1<<1) | (3<<7), 0,
				      "MODE SELECT(10)");
		if (reply == 0)
			reply = FUNC3(common, bh);
		break;

	case MODE_SENSE:
		common->data_size_from_cmnd = common->cmnd[4];
		reply = FUNC0(common, 6, DATA_DIR_TO_HOST,
				      (1<<1) | (1<<2) | (1<<4), 0,
				      "MODE SENSE(6)");
		if (reply == 0)
			reply = FUNC4(common, bh);
		break;

	case MODE_SENSE_10:
		common->data_size_from_cmnd =
			FUNC18(&common->cmnd[7]);
		reply = FUNC0(common, 10, DATA_DIR_TO_HOST,
				      (1<<1) | (1<<2) | (3<<7), 0,
				      "MODE SENSE(10)");
		if (reply == 0)
			reply = FUNC4(common, bh);
		break;

	case ALLOW_MEDIUM_REMOVAL:
		common->data_size_from_cmnd = 0;
		reply = FUNC0(common, 6, DATA_DIR_NONE,
				      (1<<4), 0,
				      "PREVENT-ALLOW MEDIUM REMOVAL");
		if (reply == 0)
			reply = FUNC5(common);
		break;

	case READ_6:
		i = common->cmnd[4];
		common->data_size_from_cmnd = (i == 0) ? 256 : i;
		reply = FUNC1(common, 6,
				      DATA_DIR_TO_HOST,
				      (7<<1) | (1<<4), 1,
				      "READ(6)");
		if (reply == 0)
			reply = FUNC6(common);
		break;

	case READ_10:
		common->data_size_from_cmnd =
				FUNC18(&common->cmnd[7]);
		reply = FUNC1(common, 10,
				      DATA_DIR_TO_HOST,
				      (1<<1) | (0xf<<2) | (3<<7), 1,
				      "READ(10)");
		if (reply == 0)
			reply = FUNC6(common);
		break;

	case READ_12:
		common->data_size_from_cmnd =
				FUNC19(&common->cmnd[6]);
		reply = FUNC1(common, 12,
				      DATA_DIR_TO_HOST,
				      (1<<1) | (0xf<<2) | (0xf<<6), 1,
				      "READ(12)");
		if (reply == 0)
			reply = FUNC6(common);
		break;

	case READ_CAPACITY:
		common->data_size_from_cmnd = 8;
		reply = FUNC0(common, 10, DATA_DIR_TO_HOST,
				      (0xf<<2) | (1<<8), 1,
				      "READ CAPACITY");
		if (reply == 0)
			reply = FUNC7(common, bh);
		break;

	case READ_HEADER:
		if (!common->curlun || !common->curlun->cdrom)
			goto unknown_cmnd;
		common->data_size_from_cmnd =
			FUNC18(&common->cmnd[7]);
		reply = FUNC0(common, 10, DATA_DIR_TO_HOST,
				      (3<<7) | (0x1f<<1), 1,
				      "READ HEADER");
		if (reply == 0)
			reply = FUNC9(common, bh);
		break;

	case READ_TOC:
		if (!common->curlun || !common->curlun->cdrom)
			goto unknown_cmnd;
		common->data_size_from_cmnd =
			FUNC18(&common->cmnd[7]);
		reply = FUNC0(common, 10, DATA_DIR_TO_HOST,
				      (7<<6) | (1<<1), 1,
				      "READ TOC");
		if (reply == 0)
			reply = FUNC10(common, bh);
		break;

	case READ_FORMAT_CAPACITIES:
		common->data_size_from_cmnd =
			FUNC18(&common->cmnd[7]);
		reply = FUNC0(common, 10, DATA_DIR_TO_HOST,
				      (3<<7), 1,
				      "READ FORMAT CAPACITIES");
		if (reply == 0)
			reply = FUNC8(common, bh);
		break;

	case REQUEST_SENSE:
		common->data_size_from_cmnd = common->cmnd[4];
		reply = FUNC0(common, 6, DATA_DIR_TO_HOST,
				      (1<<4), 0,
				      "REQUEST SENSE");
		if (reply == 0)
			reply = FUNC11(common, bh);
		break;

	case START_STOP:
		common->data_size_from_cmnd = 0;
		reply = FUNC0(common, 6, DATA_DIR_NONE,
				      (1<<1) | (1<<4), 0,
				      "START-STOP UNIT");
		if (reply == 0)
			reply = FUNC12(common);
		break;

	case SYNCHRONIZE_CACHE:
		common->data_size_from_cmnd = 0;
		reply = FUNC0(common, 10, DATA_DIR_NONE,
				      (0xf<<2) | (3<<7), 1,
				      "SYNCHRONIZE CACHE");
		if (reply == 0)
			reply = FUNC13(common);
		break;

	case TEST_UNIT_READY:
		common->data_size_from_cmnd = 0;
		reply = FUNC0(common, 6, DATA_DIR_NONE,
				0, 1,
				"TEST UNIT READY");
		break;

	/*
	 * Although optional, this command is used by MS-Windows.  We
	 * support a minimal version: BytChk must be 0.
	 */
	case VERIFY:
		common->data_size_from_cmnd = 0;
		reply = FUNC0(common, 10, DATA_DIR_NONE,
				      (1<<1) | (0xf<<2) | (3<<7), 1,
				      "VERIFY");
		if (reply == 0)
			reply = FUNC14(common);
		break;

	case WRITE_6:
		i = common->cmnd[4];
		common->data_size_from_cmnd = (i == 0) ? 256 : i;
		reply = FUNC1(common, 6,
				      DATA_DIR_FROM_HOST,
				      (7<<1) | (1<<4), 1,
				      "WRITE(6)");
		if (reply == 0)
			reply = FUNC15(common);
		break;

	case WRITE_10:
		common->data_size_from_cmnd =
				FUNC18(&common->cmnd[7]);
		reply = FUNC1(common, 10,
				      DATA_DIR_FROM_HOST,
				      (1<<1) | (0xf<<2) | (3<<7), 1,
				      "WRITE(10)");
		if (reply == 0)
			reply = FUNC15(common);
		break;

	case WRITE_12:
		common->data_size_from_cmnd =
				FUNC19(&common->cmnd[6]);
		reply = FUNC1(common, 12,
				      DATA_DIR_FROM_HOST,
				      (1<<1) | (0xf<<2) | (0xf<<6), 1,
				      "WRITE(12)");
		if (reply == 0)
			reply = FUNC15(common);
		break;

	/*
	 * Some mandatory commands that we recognize but don't implement.
	 * They don't mean much in this setting.  It's left as an exercise
	 * for anyone interested to implement RESERVE and RELEASE in terms
	 * of Posix locks.
	 */
	case FORMAT_UNIT:
	case RELEASE:
	case RESERVE:
	case SEND_DIAGNOSTIC:
		/* Fall through */

	default:
unknown_cmnd:
		common->data_size_from_cmnd = 0;
		FUNC23(unknown, "Unknown x%02x", common->cmnd[0]);
		reply = FUNC0(common, common->cmnd_size,
				      DATA_DIR_UNKNOWN, ~0, 0, unknown);
		if (reply == 0) {
			common->curlun->sense_data = SS_INVALID_COMMAND;
			reply = -EINVAL;
		}
		break;
	}
	FUNC24(&common->filesem);

	if (reply == -EINTR || FUNC21(current))
		return -EINTR;

	/* Set up the single reply buffer for finish_reply() */
	if (reply == -EINVAL)
		reply = 0;		/* Error reply length */
	if (reply >= 0 && common->data_dir == DATA_DIR_TO_HOST) {
		reply = FUNC20((u32)reply, common->data_size_from_cmnd);
		bh->inreq->length = reply;
		bh->state = BUF_STATE_FULL;
		common->residue -= reply;
	}				/* Otherwise it's already set */

	return 0;
}