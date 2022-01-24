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
typedef  scalar_t__ u32 ;
struct uea_softc {TYPE_1__* usb_dev; } ;
struct uea_cmvs_v2 {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EILSEQ ; 
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
 int UEA_FW_NAME_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct uea_softc*,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct uea_softc*,void**,struct firmware const**) ; 
 int FUNC6 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC10(struct uea_softc *sc,
		 void **cmvs, const struct firmware **fw, int *ver)
{
	int ret, size;
	u32 crc;
	u8 *data;
	char cmv_name[UEA_FW_NAME_MAX]; /* 30 bytes stack variable */

	FUNC1(sc, cmv_name, 2);
	ret = FUNC6(fw, cmv_name, &sc->usb_dev->dev);
	if (ret < 0) {
		/* if caller can handle old version, try to provide it */
		if (*ver == 1) {
			FUNC9(FUNC0(sc), "requesting "
							"firmware %s failed, "
				"try to get older cmvs\n", cmv_name);
			return FUNC5(sc, cmvs, fw);
		}
		FUNC8(FUNC0(sc),
		       "requesting firmware %s failed with error %d\n",
		       cmv_name, ret);
		return ret;
	}

	size = (*fw)->size;
	data = (u8 *) (*fw)->data;
	if (size < 4 || FUNC7(data, "cmv2", 4) != 0) {
		if (*ver == 1) {
			FUNC9(FUNC0(sc), "firmware %s is corrupted,"
				" try to get older cmvs\n", cmv_name);
			FUNC4(*fw);
			return FUNC5(sc, cmvs, fw);
		}
		goto err_fw_corrupted;
	}

	*ver = 2;

	data += 4;
	size -= 4;
	if (size < 5)
		goto err_fw_corrupted;

	crc = FUNC3(data);
	data += 4;
	size -= 4;
	if (FUNC2(0, data, size) != crc)
		goto err_fw_corrupted;

	if (size != *data * sizeof(struct uea_cmvs_v2) + 1)
		goto err_fw_corrupted;

	*cmvs = (void *) (data + 1);
	return *data;

err_fw_corrupted:
	FUNC8(FUNC0(sc), "firmware %s is corrupted\n", cmv_name);
	FUNC4(*fw);
	return -EILSEQ;
}