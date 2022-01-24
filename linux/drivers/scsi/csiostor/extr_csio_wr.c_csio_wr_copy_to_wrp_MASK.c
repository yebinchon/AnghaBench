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
typedef  void uint8_t ;
typedef  int uint32_t ;
struct csio_wr_pair {int size1; int size2; void* addr2; scalar_t__ addr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 

void
FUNC2(void *data_buf, struct csio_wr_pair *wrp,
		   uint32_t wr_off, uint32_t data_len)
{
	uint32_t nbytes;

	/* Number of space available in buffer addr1 of WRP */
	nbytes = ((wrp->size1 - wr_off) >= data_len) ?
					data_len : (wrp->size1 - wr_off);

	FUNC1((uint8_t *) wrp->addr1 + wr_off, data_buf, nbytes);
	data_len -= nbytes;

	/* Write the remaining data from the begining of circular buffer */
	if (data_len) {
		FUNC0(data_len <= wrp->size2);
		FUNC0(wrp->addr2 != NULL);
		FUNC1(wrp->addr2, (uint8_t *) data_buf + nbytes, data_len);
	}
}