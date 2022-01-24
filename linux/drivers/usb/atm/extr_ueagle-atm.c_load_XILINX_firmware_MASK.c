#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct uea_softc {TYPE_1__* usb_dev; } ;
struct firmware {int size; scalar_t__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EILSEQ ; 
 char* FPGA930_FIRMWARE ; 
 TYPE_1__* FUNC0 (struct uea_softc*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct uea_softc*,int,int,int,scalar_t__ const*) ; 
 int FUNC8 (TYPE_1__*,int,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC9(struct uea_softc *sc)
{
	const struct firmware *fw_entry;
	int ret, size, u, ln;
	const u8 *pfw;
	u8 value;
	char *fw_name = FPGA930_FIRMWARE;

	FUNC4(FUNC0(sc));

	ret = FUNC3(&fw_entry, fw_name, &sc->usb_dev->dev);
	if (ret) {
		FUNC5(FUNC0(sc), "firmware %s is not available\n",
		       fw_name);
		goto err0;
	}

	pfw = fw_entry->data;
	size = fw_entry->size;
	if (size != 0x577B) {
		FUNC5(FUNC0(sc), "firmware %s is corrupted\n",
		       fw_name);
		ret = -EILSEQ;
		goto err1;
	}
	for (u = 0; u < size; u += ln) {
		ln = FUNC1(size - u, 64);
		ret = FUNC7(sc, 0xe, 0, ln, pfw + u);
		if (ret < 0) {
			FUNC5(FUNC0(sc),
			       "elsa download data failed (%d)\n", ret);
			goto err1;
		}
	}

	/* finish to send the fpga */
	ret = FUNC7(sc, 0xe, 1, 0, NULL);
	if (ret < 0) {
		FUNC5(FUNC0(sc),
				"elsa download data failed (%d)\n", ret);
		goto err1;
	}

	/* Tell the modem we finish : de-assert reset */
	value = 0;
	ret = FUNC8(sc->usb_dev, 0xe, 1, &value);
	if (ret < 0)
		FUNC5(sc->usb_dev, "elsa de-assert failed with error"
								" %d\n", ret);

err1:
	FUNC2(fw_entry);
err0:
	FUNC6(FUNC0(sc));
	return ret;
}