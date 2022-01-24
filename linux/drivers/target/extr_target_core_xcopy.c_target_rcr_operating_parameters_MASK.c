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
struct se_cmd {int data_length; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;

/* Variables and functions */
 int /*<<< orphan*/  GOOD ; 
 unsigned char RCR_OP_DATA_SEG_GRAN_LOG2 ; 
 unsigned char RCR_OP_HELD_DATA_GRAN_LOG2 ; 
 unsigned char RCR_OP_INLINE_DATA_GRAN_LOG2 ; 
 unsigned char RCR_OP_MAX_CONCURR_COPIES ; 
 int RCR_OP_MAX_DESC_LIST_LEN ; 
 int RCR_OP_MAX_SEGMENT_LEN ; 
 int /*<<< orphan*/  RCR_OP_MAX_SG_DESC_COUNT ; 
 int /*<<< orphan*/  RCR_OP_MAX_TARGET_DESC_COUNT ; 
 int /*<<< orphan*/  RCR_OP_TOTAL_CONCURR_COPIES ; 
 int /*<<< orphan*/  TCM_INVALID_CDB_FIELD ; 
 int /*<<< orphan*/  TCM_NO_SENSE ; 
 int /*<<< orphan*/  TCM_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*) ; 

__attribute__((used)) static sense_reason_t FUNC6(struct se_cmd *se_cmd)
{
	unsigned char *p;

	p = FUNC4(se_cmd);
	if (!p) {
		FUNC0("transport_kmap_data_sg failed in"
		       " target_rcr_operating_parameters\n");
		return TCM_OUT_OF_RESOURCES;
	}

	if (se_cmd->data_length < 54) {
		FUNC0("Receive Copy Results Op Parameters length"
		       " too small: %u\n", se_cmd->data_length);
		FUNC5(se_cmd);
		return TCM_INVALID_CDB_FIELD;
	}
	/*
	 * Set SNLID=1 (Supports no List ID)
	 */
	p[4] = 0x1;
	/*
	 * MAXIMUM TARGET DESCRIPTOR COUNT
	 */
	FUNC1(RCR_OP_MAX_TARGET_DESC_COUNT, &p[8]);
	/*
	 * MAXIMUM SEGMENT DESCRIPTOR COUNT
	 */
	FUNC1(RCR_OP_MAX_SG_DESC_COUNT, &p[10]);
	/*
	 * MAXIMUM DESCRIPTOR LIST LENGTH
	 */
	FUNC2(RCR_OP_MAX_DESC_LIST_LEN, &p[12]);
	/*
	 * MAXIMUM SEGMENT LENGTH
	 */
	FUNC2(RCR_OP_MAX_SEGMENT_LEN, &p[16]);
	/*
	 * MAXIMUM INLINE DATA LENGTH for SA 0x04 (NOT SUPPORTED)
	 */
	FUNC2(0x0, &p[20]);
	/*
	 * HELD DATA LIMIT
	 */
	FUNC2(0x0, &p[24]);
	/*
	 * MAXIMUM STREAM DEVICE TRANSFER SIZE
	 */
	FUNC2(0x0, &p[28]);
	/*
	 * TOTAL CONCURRENT COPIES
	 */
	FUNC1(RCR_OP_TOTAL_CONCURR_COPIES, &p[34]);
	/*
	 * MAXIMUM CONCURRENT COPIES
	 */
	p[36] = RCR_OP_MAX_CONCURR_COPIES;
	/*
	 * DATA SEGMENT GRANULARITY (log 2)
	 */
	p[37] = RCR_OP_DATA_SEG_GRAN_LOG2;
	/*
	 * INLINE DATA GRANULARITY log 2)
	 */
	p[38] = RCR_OP_INLINE_DATA_GRAN_LOG2;
	/*
	 * HELD DATA GRANULARITY
	 */
	p[39] = RCR_OP_HELD_DATA_GRAN_LOG2;
	/*
	 * IMPLEMENTED DESCRIPTOR LIST LENGTH
	 */
	p[43] = 0x2;
	/*
	 * List of implemented descriptor type codes (ordered)
	 */
	p[44] = 0x02; /* Copy Block to Block device */
	p[45] = 0xe4; /* Identification descriptor target descriptor */

	/*
	 * AVAILABLE DATA (n-3)
	 */
	FUNC2(42, &p[0]);

	FUNC5(se_cmd);
	FUNC3(se_cmd, GOOD);

	return TCM_NO_SENSE;
}