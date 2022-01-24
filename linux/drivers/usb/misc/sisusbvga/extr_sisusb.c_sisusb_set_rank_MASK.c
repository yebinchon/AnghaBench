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
struct sisusb_usb_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SISSR ; 
 int FUNC1 (struct sisusb_usb_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sisusb_usb_data *sisusb, int *iret,
		int index, u8 rankno, u8 chab, const u8 dramtype[][5], int bw)
{
	int ret = 0, ranksize;
	u8 tmp;

	*iret = 0;

	if ((rankno == 2) && (dramtype[index][0] == 2))
		return ret;

	ranksize = dramtype[index][3] / 2 * bw / 32;

	if ((ranksize * rankno) > 128)
		return ret;

	tmp = 0;
	while ((ranksize >>= 1) > 0)
		tmp += 0x10;

	tmp |= ((rankno - 1) << 2);
	tmp |= ((bw / 64) & 0x02);
	tmp |= (chab & 0x01);

	ret = FUNC0(SISSR, 0x14, tmp);
	ret |= FUNC1(sisusb, 0); /* sic! */

	*iret = 1;

	return ret;
}