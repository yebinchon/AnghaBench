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
typedef  int u8 ;
typedef  int u32 ;
struct sisusb_usb_data {TYPE_1__* sisusb_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char const) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SISCAP ; 
 int /*<<< orphan*/  SISCR ; 
 int /*<<< orphan*/  SISMISCR ; 
 int /*<<< orphan*/  SISMISCW ; 
 int /*<<< orphan*/  SISPART1 ; 
 int /*<<< orphan*/  SISSR ; 
 int /*<<< orphan*/  SISVGAEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (struct sisusb_usb_data*,int*,int,int) ; 
 int FUNC8 (struct sisusb_usb_data*,int*,int*) ; 
 int FUNC9 (struct sisusb_usb_data*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct sisusb_usb_data*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sisusb_usb_data*,int) ; 
 int FUNC12 (struct sisusb_usb_data*) ; 

__attribute__((used)) static int FUNC13(struct sisusb_usb_data *sisusb)
{
	int ret = 0, i, j, bw, chab, iret, retry = 3;
	u8 tmp8, ramtype;
	u32 tmp32;
	static const char mclktable[] = {
		0x3b, 0x22, 0x01, 143,
		0x3b, 0x22, 0x01, 143,
		0x3b, 0x22, 0x01, 143,
		0x3b, 0x22, 0x01, 143
	};
	static const char eclktable[] = {
		0x3b, 0x22, 0x01, 143,
		0x3b, 0x22, 0x01, 143,
		0x3b, 0x22, 0x01, 143,
		0x3b, 0x22, 0x01, 143
	};
	static const char ramtypetable1[] = {
		0x00, 0x04, 0x60, 0x60,
		0x0f, 0x0f, 0x1f, 0x1f,
		0xba, 0xba, 0xba, 0xba,
		0xa9, 0xa9, 0xac, 0xac,
		0xa0, 0xa0, 0xa0, 0xa8,
		0x00, 0x00, 0x02, 0x02,
		0x30, 0x30, 0x40, 0x40
	};
	static const char ramtypetable2[] = {
		0x77, 0x77, 0x44, 0x44,
		0x77, 0x77, 0x44, 0x44,
		0x00, 0x00, 0x00, 0x00,
		0x5b, 0x5b, 0xab, 0xab,
		0x00, 0x00, 0xf0, 0xf8
	};

	while (retry--) {

		/* Enable VGA */
		ret = FUNC1(SISVGAEN, &tmp8);
		ret |= FUNC5(SISVGAEN, (tmp8 | 0x01));

		/* Enable GPU access to VRAM */
		ret |= FUNC1(SISMISCR, &tmp8);
		ret |= FUNC5(SISMISCW, (tmp8 | 0x01));

		if (ret)
			continue;

		/* Reset registers */
		ret |= FUNC3(SISCR, 0x5b, 0xdf);
		ret |= FUNC2(SISSR, 0x05, 0x86);
		ret |= FUNC4(SISSR, 0x20, 0x01);

		ret |= FUNC5(SISMISCW, 0x67);

		for (i = 0x06; i <= 0x1f; i++)
			ret |= FUNC2(SISSR, i, 0x00);

		for (i = 0x21; i <= 0x27; i++)
			ret |= FUNC2(SISSR, i, 0x00);

		for (i = 0x31; i <= 0x3d; i++)
			ret |= FUNC2(SISSR, i, 0x00);

		for (i = 0x12; i <= 0x1b; i++)
			ret |= FUNC2(SISSR, i, 0x00);

		for (i = 0x79; i <= 0x7c; i++)
			ret |= FUNC2(SISCR, i, 0x00);

		if (ret)
			continue;

		ret |= FUNC2(SISCR, 0x63, 0x80);

		ret |= FUNC0(SISSR, 0x3a, &ramtype);
		ramtype &= 0x03;

		ret |= FUNC2(SISSR, 0x28, mclktable[ramtype * 4]);
		ret |= FUNC2(SISSR, 0x29, mclktable[(ramtype * 4) + 1]);
		ret |= FUNC2(SISSR, 0x2a, mclktable[(ramtype * 4) + 2]);

		ret |= FUNC2(SISSR, 0x2e, eclktable[ramtype * 4]);
		ret |= FUNC2(SISSR, 0x2f, eclktable[(ramtype * 4) + 1]);
		ret |= FUNC2(SISSR, 0x30, eclktable[(ramtype * 4) + 2]);

		ret |= FUNC2(SISSR, 0x07, 0x18);
		ret |= FUNC2(SISSR, 0x11, 0x0f);

		if (ret)
			continue;

		for (i = 0x15, j = 0; i <= 0x1b; i++, j++) {
			ret |= FUNC2(SISSR, i,
					ramtypetable1[(j*4) + ramtype]);
		}
		for (i = 0x40, j = 0; i <= 0x44; i++, j++) {
			ret |= FUNC2(SISCR, i,
					ramtypetable2[(j*4) + ramtype]);
		}

		ret |= FUNC2(SISCR, 0x49, 0xaa);

		ret |= FUNC2(SISSR, 0x1f, 0x00);
		ret |= FUNC2(SISSR, 0x20, 0xa0);
		ret |= FUNC2(SISSR, 0x23, 0xf6);
		ret |= FUNC2(SISSR, 0x24, 0x0d);
		ret |= FUNC2(SISSR, 0x25, 0x33);

		ret |= FUNC2(SISSR, 0x11, 0x0f);

		ret |= FUNC4(SISPART1, 0x2f, 0x01);

		ret |= FUNC3(SISCAP, 0x3f, 0xef);

		if (ret)
			continue;

		ret |= FUNC2(SISPART1, 0x00, 0x00);

		ret |= FUNC0(SISSR, 0x13, &tmp8);
		tmp8 >>= 4;

		ret |= FUNC2(SISPART1, 0x02, 0x00);
		ret |= FUNC2(SISPART1, 0x2e, 0x08);

		ret |= FUNC9(sisusb, 0x50, &tmp32);
		tmp32 &= 0x00f00000;
		tmp8 = (tmp32 == 0x100000) ? 0x33 : 0x03;
		ret |= FUNC2(SISSR, 0x25, tmp8);
		tmp8 = (tmp32 == 0x100000) ? 0xaa : 0x88;
		ret |= FUNC2(SISCR, 0x49, tmp8);

		ret |= FUNC2(SISSR, 0x27, 0x1f);
		ret |= FUNC2(SISSR, 0x31, 0x00);
		ret |= FUNC2(SISSR, 0x32, 0x11);
		ret |= FUNC2(SISSR, 0x33, 0x00);

		if (ret)
			continue;

		ret |= FUNC2(SISCR, 0x83, 0x00);

		FUNC10(sisusb, 0);

		ret |= FUNC3(SISSR, 0x21, 0xdf);
		ret |= FUNC4(SISSR, 0x01, 0x20);
		ret |= FUNC4(SISSR, 0x16, 0x0f);

		ret |= FUNC11(sisusb, ramtype);

		/* Disable refresh */
		ret |= FUNC3(SISSR, 0x17, 0xf8);
		ret |= FUNC4(SISSR, 0x19, 0x03);

		ret |= FUNC8(sisusb, &bw, &chab);
		ret |= FUNC12(sisusb);

		if (ramtype <= 1) {
			ret |= FUNC7(sisusb, &iret, bw, chab);
			if (iret) {
				FUNC6(&sisusb->sisusb_dev->dev,
						"RAM size detection failed, assuming 8MB video RAM\n");
				ret |= FUNC2(SISSR, 0x14, 0x31);
				/* TODO */
			}
		} else {
			FUNC6(&sisusb->sisusb_dev->dev,
					"DDR RAM device found, assuming 8MB video RAM\n");
			ret |= FUNC2(SISSR, 0x14, 0x31);
			/* *** TODO *** */
		}

		/* Enable refresh */
		ret |= FUNC2(SISSR, 0x16, ramtypetable1[4 + ramtype]);
		ret |= FUNC2(SISSR, 0x17, ramtypetable1[8 + ramtype]);
		ret |= FUNC2(SISSR, 0x19, ramtypetable1[16 + ramtype]);

		ret |= FUNC4(SISSR, 0x21, 0x20);

		ret |= FUNC2(SISSR, 0x22, 0xfb);
		ret |= FUNC2(SISSR, 0x21, 0xa5);

		if (ret == 0)
			break;
	}

	return ret;
}