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
struct uea_softc {TYPE_1__* usb_dev; } ;
struct uea_cmvs_v1 {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EILSEQ ; 
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
 int UEA_FW_NAME_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct uea_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static int FUNC5(struct uea_softc *sc,
		 void **cmvs, const struct firmware **fw)
{
	int ret, size;
	u8 *data;
	char cmv_name[UEA_FW_NAME_MAX]; /* 30 bytes stack variable */

	FUNC1(sc, cmv_name, 1);
	ret = FUNC3(fw, cmv_name, &sc->usb_dev->dev);
	if (ret < 0) {
		FUNC4(FUNC0(sc),
		       "requesting firmware %s failed with error %d\n",
		       cmv_name, ret);
		return ret;
	}

	data = (u8 *) (*fw)->data;
	size = (*fw)->size;
	if (size < 1)
		goto err_fw_corrupted;

	if (size != *data * sizeof(struct uea_cmvs_v1) + 1)
		goto err_fw_corrupted;

	*cmvs = (void *)(data + 1);
	return *data;

err_fw_corrupted:
	FUNC4(FUNC0(sc), "firmware %s is corrupted\n", cmv_name);
	FUNC2(*fw);
	return -EILSEQ;
}