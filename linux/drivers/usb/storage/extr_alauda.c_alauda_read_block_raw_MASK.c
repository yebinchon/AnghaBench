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
typedef  int /*<<< orphan*/  u16 ;
struct us_data {int /*<<< orphan*/  recv_bulk_pipe; int /*<<< orphan*/  send_bulk_pipe; } ;
struct TYPE_2__ {int pagesize; } ;

/* Variables and functions */
 unsigned int ALAUDA_BULK_CMD ; 
 unsigned int ALAUDA_BULK_READ_BLOCK ; 
 TYPE_1__ FUNC0 (struct us_data*) ; 
 unsigned int FUNC1 (struct us_data*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int USB_STOR_XFER_GOOD ; 
 int FUNC5 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct us_data*,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct us_data *us, u16 pba,
		unsigned int page, unsigned int pages, unsigned char *data)
{
	int rc;
	unsigned char command[] = {
		ALAUDA_BULK_CMD, ALAUDA_BULK_READ_BLOCK, FUNC2(pba),
		FUNC4(pba), 0, FUNC3(pba) + page, pages, 0, FUNC1(us)
	};

	FUNC6(us, "pba %d page %d count %d\n", pba, page, pages);

	rc = FUNC5(us, us->send_bulk_pipe,
		command, 9, NULL);
	if (rc != USB_STOR_XFER_GOOD)
		return rc;

	return FUNC5(us, us->recv_bulk_pipe,
		data, (FUNC0(us).pagesize + 64) * pages, NULL);
}