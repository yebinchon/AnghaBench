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
typedef  scalar_t__ uint32_t ;
struct scsi_cmnd {int dummy; } ;
struct scatterlist {scalar_t__ length; scalar_t__ offset; } ;
struct csio_dma_buf {scalar_t__ len; void* vaddr; } ;
struct csio_ioreq {struct csio_dma_buf gen_list; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ DID_ERROR ; 
 scalar_t__ DID_OK ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*,void*,scalar_t__,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,struct scatterlist*,struct csio_ioreq*) ; 
 scalar_t__ FUNC2 (struct csio_dma_buf*) ; 
 scalar_t__ FUNC3 (struct csio_ioreq*) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC9 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC10 (struct scatterlist*) ; 
 scalar_t__ FUNC11 (struct scatterlist*) ; 

__attribute__((used)) static inline uint32_t
FUNC12(struct csio_hw *hw, struct csio_ioreq *req)
{
	struct scsi_cmnd *scmnd  = (struct scsi_cmnd *)FUNC3(req);
	struct scatterlist *sg;
	uint32_t bytes_left;
	uint32_t bytes_copy;
	uint32_t buf_off = 0;
	uint32_t start_off = 0;
	uint32_t sg_off = 0;
	void *sg_addr;
	void *buf_addr;
	struct csio_dma_buf *dma_buf;

	bytes_left = FUNC8(scmnd);
	sg = FUNC9(scmnd);
	dma_buf = (struct csio_dma_buf *)FUNC2(&req->gen_list);

	/* Copy data from driver buffer to SGs of SCSI CMD */
	while (bytes_left > 0 && sg && dma_buf) {
		if (buf_off >= dma_buf->len) {
			buf_off = 0;
			dma_buf = (struct csio_dma_buf *)
					FUNC2(dma_buf);
			continue;
		}

		if (start_off >= sg->length) {
			start_off -= sg->length;
			sg = FUNC10(sg);
			continue;
		}

		buf_addr = dma_buf->vaddr + buf_off;
		sg_off = sg->offset + start_off;
		bytes_copy = FUNC7((dma_buf->len - buf_off),
				sg->length - start_off);
		bytes_copy = FUNC7((uint32_t)(PAGE_SIZE - (sg_off & ~PAGE_MASK)),
				 bytes_copy);

		sg_addr = FUNC4(FUNC11(sg) + (sg_off >> PAGE_SHIFT));
		if (!sg_addr) {
			FUNC1(hw, "failed to kmap sg:%p of ioreq:%p\n",
				sg, req);
			break;
		}

		FUNC0(hw, "copy_to_sgl:sg_addr %p sg_off %d buf %p len %d\n",
				sg_addr, sg_off, buf_addr, bytes_copy);
		FUNC6(sg_addr + (sg_off & ~PAGE_MASK), buf_addr, bytes_copy);
		FUNC5(sg_addr);

		start_off +=  bytes_copy;
		buf_off += bytes_copy;
		bytes_left -= bytes_copy;
	}

	if (bytes_left > 0)
		return DID_ERROR;
	else
		return DID_OK;
}