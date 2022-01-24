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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct uea_softc {int /*<<< orphan*/  usb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_TIMEOUT ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
 int /*<<< orphan*/  UEA_IDMA_PIPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct uea_softc *sc, const void *data, u32 size)
{
	int ret = -ENOMEM;
	u8 *xfer_buff;
	int bytes_read;

	xfer_buff = FUNC2(data, size, GFP_KERNEL);
	if (!xfer_buff) {
		FUNC3(FUNC0(sc), "can't allocate xfer_buff\n");
		return ret;
	}

	ret = FUNC4(sc->usb_dev,
			 FUNC5(sc->usb_dev, UEA_IDMA_PIPE),
			 xfer_buff, size, &bytes_read, BULK_TIMEOUT);

	FUNC1(xfer_buff);
	if (ret < 0)
		return ret;
	if (size != bytes_read) {
		FUNC3(FUNC0(sc), "size != bytes_read %d %d\n", size,
		       bytes_read);
		return -EIO;
	}

	return 0;
}