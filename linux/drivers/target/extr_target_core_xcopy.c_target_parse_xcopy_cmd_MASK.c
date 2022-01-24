#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xcopy_op {TYPE_4__* dst_dev; TYPE_2__* src_dev; struct se_cmd* xop_se_cmd; } ;
struct se_cmd {scalar_t__ data_length; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
struct TYPE_7__ {scalar_t__ block_size; } ;
struct TYPE_8__ {TYPE_3__ dev_attrib; } ;
struct TYPE_5__ {scalar_t__ block_size; } ;
struct TYPE_6__ {TYPE_1__ dev_attrib; } ;

/* Variables and functions */
 unsigned short RCR_OP_MAX_DESC_LIST_LEN ; 
 int /*<<< orphan*/  TCM_INVALID_PARAMETER_LIST ; 
 int /*<<< orphan*/  TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 int /*<<< orphan*/  TCM_NO_SENSE ; 
 int /*<<< orphan*/  TCM_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  TCM_PARAMETER_LIST_LENGTH_ERROR ; 
 scalar_t__ XCOPY_HDR_LEN ; 
 int XCOPY_SEGMENT_DESC_LEN ; 
 int XCOPY_TARGET_DESC_LEN ; 
 unsigned short FUNC0 (unsigned char*) ; 
 unsigned int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct se_cmd*,struct xcopy_op*,unsigned char*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct se_cmd*,struct xcopy_op*,unsigned char*,unsigned short,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC6 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (struct xcopy_op*) ; 

__attribute__((used)) static sense_reason_t FUNC9(struct xcopy_op *xop)
{
	struct se_cmd *se_cmd = xop->xop_se_cmd;
	unsigned char *p = NULL, *seg_desc;
	unsigned int list_id, list_id_usage, sdll, inline_dl;
	sense_reason_t ret = TCM_INVALID_PARAMETER_LIST;
	int rc;
	unsigned short tdll;

	p = FUNC6(se_cmd);
	if (!p) {
		FUNC3("transport_kmap_data_sg() failed in target_do_xcopy\n");
		return TCM_OUT_OF_RESOURCES;
	}

	list_id = p[0];
	list_id_usage = (p[1] & 0x18) >> 3;

	/*
	 * Determine TARGET DESCRIPTOR LIST LENGTH + SEGMENT DESCRIPTOR LIST LENGTH
	 */
	tdll = FUNC0(&p[2]);
	sdll = FUNC1(&p[8]);
	if (tdll + sdll > RCR_OP_MAX_DESC_LIST_LEN) {
		FUNC3("XCOPY descriptor list length %u exceeds maximum %u\n",
		       tdll + sdll, RCR_OP_MAX_DESC_LIST_LEN);
		ret = TCM_PARAMETER_LIST_LENGTH_ERROR;
		goto out;
	}

	inline_dl = FUNC1(&p[12]);
	if (inline_dl != 0) {
		FUNC3("XCOPY with non zero inline data length\n");
		goto out;
	}

	if (se_cmd->data_length < (XCOPY_HDR_LEN + tdll + sdll + inline_dl)) {
		FUNC3("XCOPY parameter truncation: data length %u too small "
			"for tdll: %hu sdll: %u inline_dl: %u\n",
			se_cmd->data_length, tdll, sdll, inline_dl);
		ret = TCM_PARAMETER_LIST_LENGTH_ERROR;
		goto out;
	}

	FUNC2("Processing XCOPY with list_id: 0x%02x list_id_usage: 0x%02x"
		" tdll: %hu sdll: %u inline_dl: %u\n", list_id, list_id_usage,
		tdll, sdll, inline_dl);

	/*
	 * skip over the target descriptors until segment descriptors
	 * have been passed - CSCD ids are needed to determine src and dest.
	 */
	seg_desc = &p[16] + tdll;

	rc = FUNC4(se_cmd, xop, seg_desc,
						    sdll, &ret);
	if (rc <= 0)
		goto out;

	FUNC2("XCOPY: Processed %d segment descriptors, length: %u\n", rc,
				rc * XCOPY_SEGMENT_DESC_LEN);

	rc = FUNC5(se_cmd, xop, &p[16], tdll, &ret);
	if (rc <= 0)
		goto out;

	if (xop->src_dev->dev_attrib.block_size !=
	    xop->dst_dev->dev_attrib.block_size) {
		FUNC3("XCOPY: Non matching src_dev block_size: %u + dst_dev"
		       " block_size: %u currently unsupported\n",
			xop->src_dev->dev_attrib.block_size,
			xop->dst_dev->dev_attrib.block_size);
		FUNC8(xop);
		ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
		goto out;
	}

	FUNC2("XCOPY: Processed %d target descriptors, length: %u\n", rc,
				rc * XCOPY_TARGET_DESC_LEN);
	FUNC7(se_cmd);
	return TCM_NO_SENSE;

out:
	if (p)
		FUNC7(se_cmd);
	return ret;
}