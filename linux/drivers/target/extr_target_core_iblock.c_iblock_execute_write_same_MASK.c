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
struct TYPE_3__ {int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct se_cmd {int t_data_nents; struct iblock_req* priv; struct se_device* se_dev; struct scatterlist* t_data_sg; scalar_t__ prot_op; int /*<<< orphan*/  t_task_lba; } ;
struct scatterlist {int length; int /*<<< orphan*/  offset; } ;
struct iblock_req {int /*<<< orphan*/  pending; } ;
struct block_device {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
typedef  int sector_t ;
struct TYPE_4__ {struct block_device* ibd_bd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC0 (struct se_device*) ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  TCM_INVALID_CDB_FIELD ; 
 int /*<<< orphan*/  TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 scalar_t__ FUNC1 (struct block_device*) ; 
 int FUNC2 (struct bio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_list*) ; 
 struct bio* FUNC5 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct block_device*,struct se_cmd*) ; 
 struct bio* FUNC8 (struct se_cmd*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC10 (struct iblock_req*) ; 
 struct iblock_req* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC16 (struct scatterlist*) ; 
 int FUNC17 (struct se_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sense_reason_t
FUNC18(struct se_cmd *cmd)
{
	struct block_device *bdev = FUNC0(cmd->se_dev)->ibd_bd;
	struct iblock_req *ibr;
	struct scatterlist *sg;
	struct bio *bio;
	struct bio_list list;
	struct se_device *dev = cmd->se_dev;
	sector_t block_lba = FUNC17(dev, cmd->t_task_lba);
	sector_t sectors = FUNC17(dev,
					FUNC15(cmd));

	if (cmd->prot_op) {
		FUNC12("WRITE_SAME: Protection information with IBLOCK"
		       " backends not supported\n");
		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
	}
	sg = &cmd->t_data_sg[0];

	if (cmd->t_data_nents > 1 ||
	    sg->length != cmd->se_dev->dev_attrib.block_size) {
		FUNC12("WRITE_SAME: Illegal SGL t_data_nents: %u length: %u"
			" block_size: %u\n", cmd->t_data_nents, sg->length,
			cmd->se_dev->dev_attrib.block_size);
		return TCM_INVALID_CDB_FIELD;
	}

	if (FUNC1(bdev)) {
		if (!FUNC7(bdev, cmd))
			return 0;
	}

	ibr = FUNC11(sizeof(struct iblock_req), GFP_KERNEL);
	if (!ibr)
		goto fail;
	cmd->priv = ibr;

	bio = FUNC8(cmd, block_lba, 1, REQ_OP_WRITE, 0);
	if (!bio)
		goto fail_free_ibr;

	FUNC4(&list);
	FUNC3(&list, bio);

	FUNC14(&ibr->pending, 1);

	while (sectors) {
		while (FUNC2(bio, FUNC16(sg), sg->length, sg->offset)
				!= sg->length) {

			bio = FUNC8(cmd, block_lba, 1, REQ_OP_WRITE,
					     0);
			if (!bio)
				goto fail_put_bios;

			FUNC13(&ibr->pending);
			FUNC3(&list, bio);
		}

		/* Always in 512 byte units for Linux/Block */
		block_lba += sg->length >> SECTOR_SHIFT;
		sectors -= sg->length >> SECTOR_SHIFT;
	}

	FUNC9(&list);
	return 0;

fail_put_bios:
	while ((bio = FUNC5(&list)))
		FUNC6(bio);
fail_free_ibr:
	FUNC10(ibr);
fail:
	return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
}