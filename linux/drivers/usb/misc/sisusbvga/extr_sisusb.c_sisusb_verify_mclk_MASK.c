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
typedef  scalar_t__ u32 ;
struct sisusb_usb_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC1 (scalar_t__,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SISSR ; 
 scalar_t__ SISUSB_PCI_MEMBASE ; 
 int FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct sisusb_usb_data *sisusb)
{
	int ret = 0;
	u32 ramptr = SISUSB_PCI_MEMBASE;
	u8 tmp1, tmp2, i, j;

	ret |= FUNC5(ramptr, 0xaa);
	ret |= FUNC5(ramptr + 16, 0x55);
	ret |= FUNC1(ramptr, &tmp1);
	ret |= FUNC1(ramptr + 16, &tmp2);
	if ((tmp1 != 0xaa) || (tmp2 != 0x55)) {
		for (i = 0, j = 16; i < 2; i++, j += 16) {
			ret |= FUNC0(SISSR, 0x21, &tmp1);
			ret |= FUNC3(SISSR, 0x21, (tmp1 & 0xfb));
			ret |= FUNC4(SISSR, 0x3c, 0x01);  /* not on 330 */
			ret |= FUNC3(SISSR, 0x3c, 0xfe); /* not on 330 */
			ret |= FUNC2(SISSR, 0x21, tmp1);
			ret |= FUNC5(ramptr + 16 + j, j);
			ret |= FUNC1(ramptr + 16 + j, &tmp1);
			if (tmp1 == j) {
				ret |= FUNC5(ramptr + j, j);
				break;
			}
		}
	}
	return ret;
}