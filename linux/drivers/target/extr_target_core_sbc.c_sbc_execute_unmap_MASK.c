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
typedef  int u32 ;
struct TYPE_3__ {int max_unmap_block_desc_count; int max_unmap_lba_count; } ;
struct se_device {TYPE_2__* transport; TYPE_1__ dev_attrib; } ;
struct se_cmd {int data_length; scalar_t__* t_task_cdb; struct se_device* se_dev; struct sbc_ops* protocol_data; } ;
struct sbc_ops {scalar_t__ (* execute_unmap ) (struct se_cmd*,scalar_t__,int) ;} ;
typedef  scalar_t__ sense_reason_t ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {scalar_t__ (* get_blocks ) (struct se_device*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOOD ; 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
 scalar_t__ TCM_ADDRESS_OUT_OF_RANGE ; 
 scalar_t__ TCM_INVALID_CDB_FIELD ; 
 scalar_t__ TCM_INVALID_PARAMETER_LIST ; 
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 scalar_t__ TCM_PARAMETER_LIST_LENGTH_ERROR ; 
 int FUNC0 (unsigned char*) ; 
 int FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 scalar_t__ FUNC5 (struct se_device*) ; 
 scalar_t__ FUNC6 (struct se_cmd*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC8 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC9 (struct se_cmd*) ; 

__attribute__((used)) static sense_reason_t
FUNC10(struct se_cmd *cmd)
{
	struct sbc_ops *ops = cmd->protocol_data;
	struct se_device *dev = cmd->se_dev;
	unsigned char *buf, *ptr = NULL;
	sector_t lba;
	int size;
	u32 range;
	sense_reason_t ret = 0;
	int dl, bd_dl;

	/* We never set ANC_SUP */
	if (cmd->t_task_cdb[1])
		return TCM_INVALID_CDB_FIELD;

	if (cmd->data_length == 0) {
		FUNC7(cmd, SAM_STAT_GOOD);
		return 0;
	}

	if (cmd->data_length < 8) {
		FUNC4("UNMAP parameter list length %u too small\n",
			cmd->data_length);
		return TCM_PARAMETER_LIST_LENGTH_ERROR;
	}

	buf = FUNC8(cmd);
	if (!buf)
		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

	dl = FUNC0(&buf[0]);
	bd_dl = FUNC0(&buf[2]);

	size = cmd->data_length - 8;
	if (bd_dl > size)
		FUNC4("UNMAP parameter list length %u too small, ignoring bd_dl %u\n",
			cmd->data_length, bd_dl);
	else
		size = bd_dl;

	if (size / 16 > dev->dev_attrib.max_unmap_block_desc_count) {
		ret = TCM_INVALID_PARAMETER_LIST;
		goto err;
	}

	/* First UNMAP block descriptor starts at 8 byte offset */
	ptr = &buf[8];
	FUNC3("UNMAP: Sub: %s Using dl: %u bd_dl: %u size: %u"
		" ptr: %p\n", dev->transport->name, dl, bd_dl, size, ptr);

	while (size >= 16) {
		lba = FUNC2(&ptr[0]);
		range = FUNC1(&ptr[8]);
		FUNC3("UNMAP: Using lba: %llu and range: %u\n",
				 (unsigned long long)lba, range);

		if (range > dev->dev_attrib.max_unmap_lba_count) {
			ret = TCM_INVALID_PARAMETER_LIST;
			goto err;
		}

		if (lba + range > dev->transport->get_blocks(dev) + 1) {
			ret = TCM_ADDRESS_OUT_OF_RANGE;
			goto err;
		}

		if (range) {
			ret = ops->execute_unmap(cmd, lba, range);
			if (ret)
				goto err;
		}

		ptr += 16;
		size -= 16;
	}

err:
	FUNC9(cmd);
	if (!ret)
		FUNC7(cmd, GOOD);
	return ret;
}