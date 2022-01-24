#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
typedef  size_t u32 ;
struct sg_mapping_iter {void* addr; size_t consumed; scalar_t__ length; } ;
struct TYPE_2__ {size_t block_size; scalar_t__ pi_prot_type; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct se_cmd {size_t t_task_lba; size_t data_length; scalar_t__ prot_type; struct se_device* se_dev; } ;
struct scatterlist {int dummy; } ;
struct rd_dev_sg_table {size_t page_start_offset; size_t page_end_offset; struct scatterlist* sg_table; } ;
struct rd_dev {int rd_flags; int /*<<< orphan*/  rd_dev_id; } ;
typedef  scalar_t__ sense_reason_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 size_t PAGE_SIZE ; 
 int RDF_NULLIO ; 
 struct rd_dev* FUNC0 (struct se_device*) ; 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
 int /*<<< orphan*/  SG_MITER_FROM_SG ; 
 int /*<<< orphan*/  SG_MITER_TO_SG ; 
 scalar_t__ TCM_INCORRECT_AMOUNT_OF_DATA ; 
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 size_t FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 size_t FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (struct se_cmd*,int) ; 
 struct rd_dev_sg_table* FUNC6 (struct rd_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct sg_mapping_iter*,struct scatterlist*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sg_mapping_iter*) ; 
 void* FUNC10 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC11 (struct se_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sense_reason_t
FUNC12(struct se_cmd *cmd, struct scatterlist *sgl, u32 sgl_nents,
	      enum dma_data_direction data_direction)
{
	struct se_device *se_dev = cmd->se_dev;
	struct rd_dev *dev = FUNC0(se_dev);
	struct rd_dev_sg_table *table;
	struct scatterlist *rd_sg;
	struct sg_mapping_iter m;
	u32 rd_offset;
	u32 rd_size;
	u32 rd_page;
	u32 src_len;
	u64 tmp;
	sense_reason_t rc;

	if (dev->rd_flags & RDF_NULLIO) {
		FUNC11(cmd, SAM_STAT_GOOD);
		return 0;
	}

	tmp = cmd->t_task_lba * se_dev->dev_attrib.block_size;
	rd_offset = FUNC1(tmp, PAGE_SIZE);
	rd_page = tmp;
	rd_size = cmd->data_length;

	table = FUNC6(dev, rd_page);
	if (!table)
		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

	rd_sg = &table->sg_table[rd_page - table->page_start_offset];

	FUNC4("RD[%u]: %s LBA: %llu, Size: %u Page: %u, Offset: %u\n",
			dev->rd_dev_id,
			data_direction == DMA_FROM_DEVICE ? "Read" : "Write",
			cmd->t_task_lba, rd_size, rd_page, rd_offset);

	if (cmd->prot_type && se_dev->dev_attrib.pi_prot_type &&
	    data_direction == DMA_TO_DEVICE) {
		rc = FUNC5(cmd, false);
		if (rc)
			return rc;
	}

	src_len = PAGE_SIZE - rd_offset;
	FUNC8(&m, sgl, sgl_nents,
			data_direction == DMA_FROM_DEVICE ?
				SG_MITER_TO_SG : SG_MITER_FROM_SG);
	while (rd_size) {
		u32 len;
		void *rd_addr;

		FUNC7(&m);
		if (!(u32)m.length) {
			FUNC4("RD[%u]: invalid sgl %p len %zu\n",
				 dev->rd_dev_id, m.addr, m.length);
			FUNC9(&m);
			return TCM_INCORRECT_AMOUNT_OF_DATA;
		}
		len = FUNC3((u32)m.length, src_len);
		if (len > rd_size) {
			FUNC4("RD[%u]: size underrun page %d offset %d "
				 "size %d\n", dev->rd_dev_id,
				 rd_page, rd_offset, rd_size);
			len = rd_size;
		}
		m.consumed = len;

		rd_addr = FUNC10(rd_sg) + rd_offset;

		if (data_direction == DMA_FROM_DEVICE)
			FUNC2(m.addr, rd_addr, len);
		else
			FUNC2(rd_addr, m.addr, len);

		rd_size -= len;
		if (!rd_size)
			continue;

		src_len -= len;
		if (src_len) {
			rd_offset += len;
			continue;
		}

		/* rd page completed, next one please */
		rd_page++;
		rd_offset = 0;
		src_len = PAGE_SIZE;
		if (rd_page <= table->page_end_offset) {
			rd_sg++;
			continue;
		}

		table = FUNC6(dev, rd_page);
		if (!table) {
			FUNC9(&m);
			return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
		}

		/* since we increment, the first sg entry is correct */
		rd_sg = table->sg_table;
	}
	FUNC9(&m);

	if (cmd->prot_type && se_dev->dev_attrib.pi_prot_type &&
	    data_direction == DMA_FROM_DEVICE) {
		rc = FUNC5(cmd, true);
		if (rc)
			return rc;
	}

	FUNC11(cmd, SAM_STAT_GOOD);
	return 0;
}