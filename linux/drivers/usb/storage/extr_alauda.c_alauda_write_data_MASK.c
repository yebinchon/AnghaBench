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
typedef  unsigned int u16 ;
struct us_data {int /*<<< orphan*/  srb; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {unsigned int blockshift; unsigned int pageshift; unsigned int blocksize; unsigned int pagesize; unsigned long blockmask; unsigned int capacity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FROM_XFER_BUF ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 TYPE_1__ FUNC0 (struct us_data*) ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int FUNC1 (struct us_data*,unsigned int,unsigned int,unsigned int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned int,int /*<<< orphan*/ ,struct scatterlist**,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct us_data*,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct us_data *us, unsigned long address,
		unsigned int sectors)
{
	unsigned char *buffer, *blockbuffer;
	unsigned int page, len, offset;
	unsigned int blockshift = FUNC0(us).blockshift;
	unsigned int pageshift = FUNC0(us).pageshift;
	unsigned int blocksize = FUNC0(us).blocksize;
	unsigned int pagesize = FUNC0(us).pagesize;
	struct scatterlist *sg;
	u16 lba, max_lba;
	int result;

	/*
	 * Since we don't write the user data directly to the device,
	 * we have to create a bounce buffer and move the data a piece
	 * at a time between the bounce buffer and the actual transfer buffer.
	 */

	len = FUNC5(sectors, blocksize) * pagesize;
	buffer = FUNC3(len, GFP_NOIO);
	if (!buffer)
		return USB_STOR_TRANSPORT_ERROR;

	/*
	 * We also need a temporary block buffer, where we read in the old data,
	 * overwrite parts with the new data, and manipulate the redundancy data
	 */
	blockbuffer = FUNC4(pagesize + 64, blocksize, GFP_NOIO);
	if (!blockbuffer) {
		FUNC2(buffer);
		return USB_STOR_TRANSPORT_ERROR;
	}

	/* Figure out the initial LBA and page */
	lba = address >> blockshift;
	page = (address & FUNC0(us).blockmask);
	max_lba = FUNC0(us).capacity >> (pageshift + blockshift);

	result = USB_STOR_TRANSPORT_GOOD;
	offset = 0;
	sg = NULL;

	while (sectors > 0) {
		/* Write as many sectors as possible in this block */
		unsigned int pages = FUNC5(sectors, blocksize - page);
		len = pages << pageshift;

		/* Not overflowing capacity? */
		if (lba >= max_lba) {
			FUNC7(us, "Requested lba %u exceeds maximum %u\n",
				     lba, max_lba);
			result = USB_STOR_TRANSPORT_ERROR;
			break;
		}

		/* Get the data from the transfer buffer */
		FUNC6(buffer, len, us->srb,
				&sg, &offset, FROM_XFER_BUF);

		result = FUNC1(us, lba, page, pages, buffer,
			blockbuffer);
		if (result != USB_STOR_TRANSPORT_GOOD)
			break;

		page = 0;
		lba++;
		sectors -= pages;
	}

	FUNC2(buffer);
	FUNC2(blockbuffer);
	return result;
}