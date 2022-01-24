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
typedef  int u32 ;
struct sisusb_usb_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC1 (int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SISSR ; 
 int SISUSB_PCI_MEMBASE ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (struct sisusb_usb_data*,int) ; 

__attribute__((used)) static int FUNC8(struct sisusb_usb_data *sisusb,
		int *bw, int *chab)
{
	int ret;
	u8  ramtype, done = 0;
	u32 t0, t1, t2, t3;
	u32 ramptr = SISUSB_PCI_MEMBASE;

	ret = FUNC0(SISSR, 0x3a, &ramtype);
	ramtype &= 3;

	ret |= FUNC2(SISSR, 0x13, 0x00);

	if (ramtype <= 1) {
		ret |= FUNC2(SISSR, 0x14, 0x12);
		ret |= FUNC3(SISSR, 0x15, 0xef);
	} else {
		ret |= FUNC2(SISSR, 0x14, 0x02);
	}

	ret |= FUNC7(sisusb, ramtype);
	ret |= FUNC6(ramptr +  0, 0x01234567);
	ret |= FUNC6(ramptr +  4, 0x456789ab);
	ret |= FUNC6(ramptr +  8, 0x89abcdef);
	ret |= FUNC6(ramptr + 12, 0xcdef0123);
	ret |= FUNC6(ramptr + 16, 0x55555555);
	ret |= FUNC6(ramptr + 20, 0x55555555);
	ret |= FUNC6(ramptr + 24, 0xffffffff);
	ret |= FUNC6(ramptr + 28, 0xffffffff);
	ret |= FUNC1(ramptr +  0, &t0);
	ret |= FUNC1(ramptr +  4, &t1);
	ret |= FUNC1(ramptr +  8, &t2);
	ret |= FUNC1(ramptr + 12, &t3);

	if (ramtype <= 1) {

		*chab = 0; *bw = 64;

		if ((t3 != 0xcdef0123) || (t2 != 0x89abcdef)) {
			if ((t1 == 0x456789ab) && (t0 == 0x01234567)) {
				*chab = 0; *bw = 64;
				ret |= FUNC3(SISSR, 0x14, 0xfd);
			}
		}
		if ((t1 != 0x456789ab) || (t0 != 0x01234567)) {
			*chab = 1; *bw = 64;
			ret |= FUNC4(SISSR, 0x14, 0xfc, 0x01);

			ret |= FUNC7(sisusb, ramtype);
			ret |= FUNC6(ramptr +  0, 0x89abcdef);
			ret |= FUNC6(ramptr +  4, 0xcdef0123);
			ret |= FUNC6(ramptr +  8, 0x55555555);
			ret |= FUNC6(ramptr + 12, 0x55555555);
			ret |= FUNC6(ramptr + 16, 0xaaaaaaaa);
			ret |= FUNC6(ramptr + 20, 0xaaaaaaaa);
			ret |= FUNC1(ramptr +  4, &t1);

			if (t1 != 0xcdef0123) {
				*bw = 32;
				ret |= FUNC5(SISSR, 0x15, 0x10);
			}
		}

	} else {

		*chab = 0; *bw = 64;	/* default: cha, bw = 64 */

		done = 0;

		if (t1 == 0x456789ab) {
			if (t0 == 0x01234567) {
				*chab = 0; *bw = 64;
				done = 1;
			}
		} else {
			if (t0 == 0x01234567) {
				*chab = 0; *bw = 32;
				ret |= FUNC2(SISSR, 0x14, 0x00);
				done = 1;
			}
		}

		if (!done) {
			ret |= FUNC2(SISSR, 0x14, 0x03);
			ret |= FUNC7(sisusb, ramtype);

			ret |= FUNC6(ramptr +  0, 0x01234567);
			ret |= FUNC6(ramptr +  4, 0x456789ab);
			ret |= FUNC6(ramptr +  8, 0x89abcdef);
			ret |= FUNC6(ramptr + 12, 0xcdef0123);
			ret |= FUNC6(ramptr + 16, 0x55555555);
			ret |= FUNC6(ramptr + 20, 0x55555555);
			ret |= FUNC6(ramptr + 24, 0xffffffff);
			ret |= FUNC6(ramptr + 28, 0xffffffff);
			ret |= FUNC1(ramptr +  0, &t0);
			ret |= FUNC1(ramptr +  4, &t1);

			if (t1 == 0x456789ab) {
				if (t0 == 0x01234567) {
					*chab = 1; *bw = 64;
					return ret;
				} /* else error */
			} else {
				if (t0 == 0x01234567) {
					*chab = 1; *bw = 32;
					ret |= FUNC2(SISSR, 0x14, 0x01);
				} /* else error */
			}
		}
	}
	return ret;
}