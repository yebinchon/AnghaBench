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
struct us_data {int /*<<< orphan*/  recv_bulk_pipe; } ;

/* Variables and functions */
 int USB_STOR_XFER_GOOD ; 
 int FUNC0 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*,char*,unsigned int) ; 

__attribute__((used)) static inline int
FUNC2(struct us_data *us, unsigned char *data, unsigned int len) {
	if (len == 0)
		return USB_STOR_XFER_GOOD;

	FUNC1(us, "len = %d\n", len);
	return FUNC0(us, us->recv_bulk_pipe,
			data, len, NULL);
}