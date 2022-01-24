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
struct TYPE_2__ {unsigned int blockshift; unsigned int pageshift; unsigned int blocksize; unsigned int pagesize; unsigned int uzonesize; unsigned long blockmask; unsigned int capacity; unsigned int** lba_to_pba; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 TYPE_1__ FUNC0 (struct us_data*) ; 
 int /*<<< orphan*/  TO_XFER_BUF ; 
 unsigned int UNDEF ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*,unsigned int) ; 
 int FUNC2 (struct us_data*,unsigned int,unsigned int,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned int,int /*<<< orphan*/ ,struct scatterlist**,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct us_data*,char*,unsigned int,unsigned int,...) ; 

__attribute__((used)) static int FUNC9(struct us_data *us, unsigned long address,
		unsigned int sectors)
{
	unsigned char *buffer;
	u16 lba, max_lba;
	unsigned int page, len, offset;
	unsigned int blockshift = FUNC0(us).blockshift;
	unsigned int pageshift = FUNC0(us).pageshift;
	unsigned int blocksize = FUNC0(us).blocksize;
	unsigned int pagesize = FUNC0(us).pagesize;
	unsigned int uzonesize = FUNC0(us).uzonesize;
	struct scatterlist *sg;
	int result;

	/*
	 * Since we only read in one block at a time, we have to create
	 * a bounce buffer and move the data a piece at a time between the
	 * bounce buffer and the actual transfer buffer.
	 * We make this buffer big enough to hold temporary redundancy data,
	 * which we use when reading the data blocks.
	 */

	len = FUNC6(sectors, blocksize) * (pagesize + 64);
	buffer = FUNC4(len, GFP_NOIO);
	if (!buffer)
		return USB_STOR_TRANSPORT_ERROR;

	/* Figure out the initial LBA and page */
	lba = address >> blockshift;
	page = (address & FUNC0(us).blockmask);
	max_lba = FUNC0(us).capacity >> (blockshift + pageshift);

	result = USB_STOR_TRANSPORT_GOOD;
	offset = 0;
	sg = NULL;

	while (sectors > 0) {
		unsigned int zone = lba / uzonesize; /* integer division */
		unsigned int lba_offset = lba - (zone * uzonesize);
		unsigned int pages;
		u16 pba;
		FUNC1(us, zone);

		/* Not overflowing capacity? */
		if (lba >= max_lba) {
			FUNC8(us, "Error: Requested lba %u exceeds maximum %u\n",
				     lba, max_lba);
			result = USB_STOR_TRANSPORT_ERROR;
			break;
		}

		/* Find number of pages we can read in this block */
		pages = FUNC6(sectors, blocksize - page);
		len = pages << pageshift;

		/* Find where this lba lives on disk */
		pba = FUNC0(us).lba_to_pba[zone][lba_offset];

		if (pba == UNDEF) {	/* this lba was never written */
			FUNC8(us, "Read %d zero pages (LBA %d) page %d\n",
				     pages, lba, page);

			/*
			 * This is not really an error. It just means
			 * that the block has never been written.
			 * Instead of returning USB_STOR_TRANSPORT_ERROR
			 * it is better to return all zero data.
			 */

			FUNC5(buffer, 0, len);
		} else {
			FUNC8(us, "Read %d pages, from PBA %d (LBA %d) page %d\n",
				     pages, pba, lba, page);

			result = FUNC2(us, pba, page, pages, buffer);
			if (result != USB_STOR_TRANSPORT_GOOD)
				break;
		}

		/* Store the data in the transfer buffer */
		FUNC7(buffer, len, us->srb,
				&sg, &offset, TO_XFER_BUF);

		page = 0;
		lba++;
		sectors -= pages;
	}

	FUNC3(buffer);
	return result;
}