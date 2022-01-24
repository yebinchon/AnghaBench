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
typedef  int u8 ;
typedef  int u16 ;
struct us_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int USB_STOR_TRANSPORT_ERROR ; 
 int USB_STOR_TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int FUNC3 (struct us_data*,int /*<<< orphan*/ ,int*,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct us_data*,char*,int,int) ; 

__attribute__((used)) static int FUNC5(struct us_data *us, u16 addr, u8 *data, u16 len)
{
	int retval;
	u8 cmnd[12] = { 0 };
	u8 *buf;

	buf = FUNC1(len, GFP_NOIO);
	if (buf == NULL)
		return USB_STOR_TRANSPORT_ERROR;

	FUNC4(us, "addr = 0x%x, len = %d\n", addr, len);

	cmnd[0] = 0xF0;
	cmnd[1] = 0x0D;
	cmnd[2] = (u8) (addr >> 8);
	cmnd[3] = (u8) addr;
	cmnd[4] = (u8) (len >> 8);
	cmnd[5] = (u8) len;

	retval = FUNC3(us, 0, cmnd, 12,
				       buf, len, DMA_FROM_DEVICE, NULL);
	if (retval != USB_STOR_TRANSPORT_GOOD) {
		FUNC0(buf);
		return -EIO;
	}

	FUNC2(data, buf, len);
	FUNC0(buf);
	return 0;
}